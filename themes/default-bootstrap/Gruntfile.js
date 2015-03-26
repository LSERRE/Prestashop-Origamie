module.exports = function (grunt) {
  grunt.initConfig({
    // Watch task config
    watch: {
      sass: {
        files: "sass/*.scss",
        tasks: ['sass']
      }
    },
    // SASS task config
    sass: {
        dev: {
            files: {
                "css/*.css" : "sass/*.scss"
            }
        }
    },

    autoprefixer: {
		no_dest: {
	      src: 'css/*.css'
	    },
  	},

  	jshint: {
    	all: ['Gruntfile.js', 'js/*.js']
  	},

  	concat: {
	    js: {
	      	src: ['js/*'],
	      	dest: 'js/scripts.js',
	    },

	    css: {
		   	src: 'css/*.css',
		    dest: 'css/styles.css'
	  }
  	},

  	min: {
	    dist: {
	        src: 'js/scrips.js',
	        dest: 'js/scrips.js'
	    }
	},

	cssmin: {
	    dist: {
	        src: 'css/styles.css',
	        dest: 'css/styles.css'
	    }
	}

  });

  grunt.registerTask('dev', ['sass', 'autoprefixer']);
  grunt.registerTask('prod', ['sass', 'autoprefixer', 'jshint', 'concat', 'min', 'cssmin']);

  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-autoprefixer');
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-yui-compressor');
};