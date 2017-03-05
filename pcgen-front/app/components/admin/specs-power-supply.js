import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    setFormFactor(product, event) {
      product.set('formFactor', event.target.value);
    },

    setEfficiency(product, event) {
      product.set('efficiency', event.target.value);
    }
  }
});
