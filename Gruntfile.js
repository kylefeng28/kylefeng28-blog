module.exports = function (grunt){
	
	grunt.initConfig({
		pkg: grunt.file.readJSON("package.json"),
	 	
		shell: {
			clean: {
				command: "rm -r public/*"
			},
			generate: {
				command: "hugo"
			},
			watch: {
				command: "hugo server --buildDrafts --watch",
				options: {
					async: true
				}
			},
			watchAssets: {
				command: "scss --watch static/css",
				options: {
					async: true
				}
			},
			server: {
				command: "hugo server"
				// command: "http-server public -p $PORT"
			}
		},
	});
  
	// Load NPM tasks
	grunt.loadNpmTasks("grunt-shell");

	// Grunt tasks
	grunt.registerTask("watch", ["shell:clean", "shell:watch"]);
	grunt.registerTask("build", ["shell:clean", "shell:generate", "shell:server"]);
	grunt.registerTask("production", ["shell:clean", "shell:generate", "shell:server"]);
};
