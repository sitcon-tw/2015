###
# HTML Tasks
###

gulp = require 'gulp'
$ = require('gulp-load-plugins')()
config = require '../config'

gulp.task 'json', ->
  gulp.src config.json.src
      .pipe gulp.dest(config.json.devDest)
      .pipe $.size({title: 'json'})

gulp.task 'json:bundle', ->
  gulp.src config.json.src
      .pipe gulp.dest(config.json.dest)
      .pipe $.size({title: 'json'})

