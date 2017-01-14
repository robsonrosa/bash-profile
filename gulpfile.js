var gulp = require('gulp');

var clean = require('gulp-clean');
var rename = require("gulp-rename");
var replace = require("gulp-replace");
var include = require('gulp-include');
var sequence = require('gulp-sequence');
var stream = require('merge-stream')();

var config = require('./config.js')();

gulp.task('clean', function () {
   return gulp.src('./dist').pipe(clean());
});

function join() {
   return include({ extensions: ['sh'] });
}

function source() {
   return replace('${repository}', config.repository);
}

function target() {
   return replace('${target}', config.target);
}

function extension() {
   return rename(function (path) {
      path.basename = '.' + path.basename;
      path.extname = ''
   });
}

gulp.task('merge', function () {
   stream.add(gulp.src('./profiles/*.sh'));
   stream.pipe(join());
   stream.pipe(source());
   stream.pipe(target());
   stream.pipe(extension());
   return stream.pipe(gulp.dest('./dist'));
});

gulp.task('main', sequence('clean', 'merge'));

gulp.task('default', ['main']);