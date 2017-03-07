import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('parts', { path: '/komponentit' }, function() {
    this.route('power-supplies', { path: '/virtalahteet' });
    this.route('fans', { path: '/tuulettimet' });
  });
  this.route('admin', function() {
    this.route('new-product', { path: '/uusi-tuote' });
  });
  this.route('build', {path: '/kokoonpano'});
  // this.route('peripherals', {path: '/oheislaitteet'}, function() {
  //   this.route('monitors', { path: '/naytot' });
  // });
  // this.route('docs', {path: '/ohjeet'}, function() {
  //   this.route('parts', { path: '/komponentit' });
  //   this.route('peripherals', { path: '/oheislaitteet' });
  //   this.route('assembly', { path: '/kasaus' });
  // });
});

export default Router;
