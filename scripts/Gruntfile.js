module.exports = function (grunt) {
  grunt.initConfig({
    clean: {
      dest: ['dest/'] // Cleans the dest folder before recreating it
    },
    mkdir: {
      dest: {
        options: {
          create: ['dest/vpx'] // Creates the dest/vpx folder
        },
      },
    },
    concat: {
      vpx: {
        src: ['src/vpx/**/*.vbs', 'src/game/**/*.vbs', 'src/glf/glf.vbs', 'src/glf/shows/*.vbs','src/glf/yamlshows/*.vbs', '!src/glf/yamlshows/*.yaml', '!src/unittests/**/*.vbs', '!src/**/*.test.vbs', '!src/**/*-mpf.vbs', '!src/**/*-ignore.vbs', 'src/**/cached-functions.vbs'],
        dest: 'dest/vpx/tablescript.vbs',
      },
      prod: {
        src: ['src/vpx/**/*.vbs', 'src/game/**/*.vbs', 'src/glf/glf.vbs', 'src/glf/shows/*.vbs','src/glf/yamlshows/*.vbs', '!src/glf/yamlshows/*.yaml', '!src/unittests/**/*.vbs', '!src/**/*.test.vbs', '!src/**/*-mpf.vbs', '!src/**/*-ignore.vbs'],
        dest: 'dest/vpx/tablescript.vbs',
      },
    },
    watch: {
      vpx: {
        files: 'src/**/*.vbs',
        tasks: ['concat:vpx'],
        options: {
          atBegin: true
        }
      },
    }
  });

  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-clean'); // Load the clean task
  grunt.loadNpmTasks('grunt-mkdir');       // Load the mkdir task

  // Default task(s).
  grunt.registerTask('default', ['clean:dest', 'mkdir:dest', 'concat']); // Run clean and mkdir before concat
};