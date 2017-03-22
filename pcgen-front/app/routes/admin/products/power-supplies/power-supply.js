import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.findRecord('power-supply', params.product_id);
  }
});
