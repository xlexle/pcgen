import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('products', { path: '/tuotteet' }, function() {
    this.route('power-supplies', { path: '/virtalahteet' });
  });
  this.route('admin', function() {
    this.route('products', { path: '/tuotteet' }, function() {
      this.route('power-supplies', { path: '/virtalahteet' });
    });
    this.route('new-product', { path: '/uusi-tuote' });
  });
  this.route('build', {path: '/kokoonpano'});
});

export default Router;
