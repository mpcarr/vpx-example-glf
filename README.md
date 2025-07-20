# GLF Example Table

Welcome to the **GLF Example Table**!

This project was created to demonstrate the core features of [GLF](https://github.com/mpcarr/vpx-glf) (Game Logic Framework) within Visual Pinball X (VPX). While it began as a technical showcase, it has also evolved into a fun little game on its own. 🎉

---

## Getting Started

To begin using this table and learning GLF, read the [Environment Setup Guide](https://mpcarr.github.io/vpx-glf/environment-setup/).

---

## Caveats & Notes

- **GLF is flexible** — there are often multiple ways to do things. This example is just one possible implementation.
- **Not all features are demonstrated** — check the [GLF documentation](https://mpcarr.github.io/vpx-glf/) for the full feature set.
- **GLF is under development** — bugs or missing features may exist.
- **Balls must not be destroyed** — required by GLF.
- **All game logic should go through GLF** — ensures portability to real hardware via [MPF](https://missionpinball.org/latest/).
- **PUP Player is not supported** — use the included Godot media player instead.
- **No VLM visuals included** — but easy to integrate (see the [Dark Chaos](https://github.com/apophis79/darkchaos) project for an example).

---

## Demo Devices

The example table includes a wide variety of physical and simulated devices:

- Trough (physical)
- Plunger (with auto-fire)
- Flippers (with staged option)
- Slingshots
- Bumpers
- Saucers / Kickers (for physical locks)
- Diverter
- Kickback
- Magnet
- Rollover triggers
- Drop targets
- Standup targets
- Alphanumeric display
- Godot media player (LCD-style video display)

---

## Demo Game Modes

- **Attract Mode**  
  Displays scores and light shows.
  
- **Multiball**  
  Jackpots, physical locks, and stealable locks from other players.
  
- **Skill Shot**  
  Via top lanes.
  
- **Kickback**  
  Qualified by top lanes.
  
- **Extra Ball**  
  Qualified by drop targets.
  
- **Hurry-Up Modes**  
  Spinner shots and ramp shots triggered via inlanes.
  
- **Magnet**  
  Flings the ball around during play.
  
- **Bonus System**  
  Bonus lights collected during play and scored at end of ball.
  
- **High Score Entry**

---

## Other Features

- Light show demonstrations
- Sound effects, callouts, and music
- Animated B2S backglass with alphanumeric reels
- VR room with:
  - Animated backglass
  - Alphanumeric display
  - Godot video display
- DOF command examples
- 3D inserts & flupper domes (example GLF integration)
- Realistic physics using:
  - VPW-style playfield
  - nFozzy flippers & rubbers
  - Roth targets
- Accurate layout for modern Stern:
  - Flippers, inlanes, slingshots
- Accurate VR cabinet dimensions
- Fleep mechanical sounds
- Tweak menu
- Included example projects:
  - Godot media player integration
  - Light show creator
- GLF Debug Monitor
- Git workflow provided for easy updates

---

## Resources

- [GLF Main Repository](https://github.com/mpcarr/vpx-glf)
- [Example Table Repository](https://github.com/mpcarr/vpx-example-glf)

---

Enjoy exploring and building with GLF!
