# Load dependencies
del             = require 'del'
gulp            = require 'gulp'
gutil           = require 'gulp-util'
coffee          = require 'gulp-coffee'
concat          = require 'gulp-concat'
uglify          = require 'gulp-uglify'
templateCache   = require 'gulp-angular-templatecache'

outputJsName = "angular-bootstrap-split-dropdown"

gulp.task 'default', ['build'], ->
  del ['./build/**/*', './build'], (error, deletedFiles) ->
    console.log "Deleted: #{file}" for file in deletedFiles

gulp.task 'clean', ->
  del ['./build/**/*', './build'], (error, deletedFiles) ->
    console.log "Deleted: #{file}" for file in deletedFiles

gulp.task 'build', ['buildjs'] # will add cacheTemplate

gulp.task 'buildjs', ['coffee', 'concatjs', 'uglifyjs']

gulp.task 'coffee', ->
  gulp.src ['./src/js/app.coffee', './src/js/*.coffee']
    .pipe coffee().on('error', gutil.log)
    .pipe gulp.dest './build/js/'

gulp.task 'concatjs', ['coffee', 'ng-templatecache'], ->
  gulp.src './build/js/**/*.js'
    .pipe concat "#{outputJsName}.js"
    .pipe gulp.dest './dist/js/'

gulp.task 'uglifyjs', ['concatjs'], ->
  gulp.src "./dist/js/#{outputJsName}.js"
    .pipe concat "#{outputJsName}.min.js"
    .pipe uglify()
    .pipe gulp.dest './dist/js/'

gulp.task 'ng-templatecache', ->
  gulp.src './src/templates/**/*.html'
    .pipe templateCache(module: 'terebinth.bootstrapSplitDropdown')
    .pipe gulp.dest('./build/js/')

gulp.task 'lint-watcher', ->
  gulp.watch './src/**/*', ['build']
