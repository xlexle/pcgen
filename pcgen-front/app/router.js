import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('property-lists');
  this.route('sources');
  this.route('services');
  this.route('shops');
  this.route('power-supplies');
  this.route('fans');
  this.route('product-conflicts');
  this.route('conflicts');
  this.route('products', { path: '/tuotteet' });
});

export default Router;
