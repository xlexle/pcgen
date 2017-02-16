/*jshint node:true*/
/* global require, module */
var EmberApp = require('ember-cli/lib/broccoli/ember-app');
var Funnel = require('broccoli-funnel');
var Merge = require('broccoli-merge-trees');

module.exports = function(defaults) {
  var app = new EmberApp(defaults, {
  });

  // Use `app.import` to add additional libraries to the generated
  // output files.
  //
  // If you need to use different assets in different
  // environments, specify an object as the first parameter. That
  // object's keys should be the environment name and the values
  // should be the asset to use in that environment.
  //
  // If the library that you are including contains AMD or ES6
  // modules that you would like to import into your application
  // please specify an object with the list of modules as keys
  // along with the exports of each module as its value.

  var bootstrap = new Funnel('bower_components/bootstrap/dist', {
    files: ['css/bootstrap.min.css', 'js/bootstrap.min.js']
  });

  var bootstrapFonts = new Funnel('bower_components/bootstrap/dist', {
    include: ['fonts/*']
  });

  var jasnyBootstrap = new Funnel('bower_components/jasny-bootstrap/dist', {
    files: ['css/jasny-bootstrap.min.css', 'js/jasny-bootstrap.min.js']
  });

  var fontAwesome = new Funnel('bower_components/components-font-awesome', {
    files: ['css/font-awesome.min.css']
  });

  var fontAwesomeFonts = new Funnel('bower_components/components-font-awesome', {
    include: ['fonts/*']
  });

  var jQuery = new Funnel('bower_components/jquery/dist', {
    files: ['jquery.min.js'],
    destDir: '/js'
  });

  return app.toTree(
    new Merge([
      bootstrap,
      bootstrapFonts,
      jasnyBootstrap,
      fontAwesome,
      fontAwesomeFonts,
      jQuery
    ], {overwrite:true})
  );
};
