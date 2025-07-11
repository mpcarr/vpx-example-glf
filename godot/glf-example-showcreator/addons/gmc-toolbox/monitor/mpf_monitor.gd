extends AspectRatioContainer
class_name MPFMonitor

const CONFIG_PATH = "res://gmc_toolbox.cfg"

var server
var scene
var config: ConfigFile

var players = []
var machine_vars = {}
var lights = {}
var switches = {}
var modes = []

func _enter_tree() -> void:
	config = ConfigFile.new()
	var err = config.load(CONFIG_PATH)
	if err != OK and err != ERR_FILE_NOT_FOUND:
		printerr("Error loading config file '%s': %s" % [CONFIG_PATH, error_string(err)])
		return
	if not config.has_section("show_creator"):
		assert(false, "Unable to read correct fields from config file: %s" % error_string(err))

	var scene_path = config.get_value("show_creator", "show_scene")
	scene = load(scene_path).instantiate()
	self.add_child(scene)
	server = preload("monitor_server.gd").new()
	self.add_child(server)
	# Everything from here on out is for runtime
	if Engine.is_editor_hint():
		return

	# Ignore the project settings, use the playfield scene
	# as the basis for the window size
	var window = get_window()
	var resize = scene.size
	if scene.monitor_size != Vector2(0,0):
		resize = scene.monitor_size
	window.size = resize
	window.content_scale_size = scene.size
	window.unresizable = false
	window.title = "MPF Monitor - %s" % ProjectSettings.get_setting("application/config/name")
	var icon = preload("../icons/icon-osx.png")
	DisplayServer.set_icon(icon.get_image())

func _ready():
	server.switch.connect(self._on_switch)
	server.light.connect(self._on_light)
	server.update_device.connect(self._update_device)
	server.update_machine_var.connect(self._update_machine_var)
	server.update_player_var.connect(self._update_player_var)
	server.update_modes.connect(self._update_modes)
	server.player_added.connect(self._add_player)

	#for l in scene.lights.values():
	#	l.set_color(Color(0.0,0.0,0.0))

func register_light(light: GMCLight):
	self.lights[light.name] = light

func register_switch(switch: GMCSwitch):
	self.switches[switch.name] = switch

func _on_light(payload):
	if not payload.name in self.lights:
		printerr("Unknown light named '%s'" % payload.name)
		return
	var colors = payload.state.color
	self.lights[payload.name].set_color(Color(colors[0] / 255, colors[1] / 255, colors[2] / 255))

func _on_switch(payload):
	if not payload.name in self.switches:
		printerr("Unknown switch named '%s'" % payload.name)
		return
	self.switches[payload.name].set_switch_state(payload.state.state)

func _add_player(num):
	while self.players.size() < num:
		self.players.append({})

func _update_device(payload):
	if payload.type == "light":
		self._on_light(payload)
	elif payload.type == "switch":
		self._on_switch(payload)

func _update_machine_var(var_name, value):
	self.machine_vars[var_name] = value

func _update_player_var(var_name, value, num):
	if num > self.players.size():
		self.players.append({})
	self.players[num - 1][var_name] = value

func _update_modes(payload):
	print("MODES: %s" % payload)
	self.modes = payload.running_modes
