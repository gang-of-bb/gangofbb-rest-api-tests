module.exports = function(grunt) {

    var coffee = require('./grunt_tasks/coffee');
    var shell = require('./grunt_tasks/shell');
    var open = require('./grunt_tasks/open');

    /**
     * grunt configuration.
     */
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        /**
         * coffee compilation task.
         */
        coffee: coffee,

        /**
         * run task
         */
        shell: shell,

        /**
         * open browser task
         */
        open: open
    });

    /**
     * load npm tasks.
     */
    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-shell');
    grunt.loadNpmTasks('grunt-open');

    /**
     * register grunt tasks.
     */
    grunt.registerTask('build', ['coffee']);
    grunt.registerTask('debug', ['build', 'shell:run', 'open']);
    grunt.registerTask('run', ['shell:run']);
};