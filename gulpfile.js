var gulp = require('gulp');

var clean = require('gulp-clean');
var rename = require("gulp-rename");
var include = require('gulp-include');
var sequence = require('gulp-sequence');
var stream = require('merge-stream')();

gulp.task('clean', function () {
   return gulp.src('./dist').pipe(clean());
});

function include() {
   return include({ extensions: ['sh'] });
}

function extension() {
   return rename(function (path) {
      path.basename = '.' + path.basename;
      path.extname = ''
   });
}

gulp.task('merge', function () {
   stream.add(gulp.src('./profiles/*.sh'));
   stream.pipe(include());
   stream.pipe(extension());
   return stream.pipe(gulp.dest('./dist'));
});

gulp.task('main', sequence('clean', 'merge'));

gulp.task('default', ['main']);