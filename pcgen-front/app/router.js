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
  this.route('build', {path: '/kokoonpano'});
});

export default Router;
