module.exports = function(grunt) {

    var coffee = require('./grunt_tasks/coffee');
    var shell = require('./grunt_tasks/shell');

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
        shell: shell
    });

    /**
     * load npm tasks.
     */
    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-shell');

    /**
     * register grunt tasks.
     */
    grunt.registerTask('build', ['coffee']);
    grunt.registerTask('debug', ['build', 'shell:run']);
    grunt.registerTask('run', ['shell:run']);
};