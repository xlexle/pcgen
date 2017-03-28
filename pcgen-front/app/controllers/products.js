import Ember from 'ember';

export default Ember.Controller.extend({
  classNames: ['row', 'products-area'],
  isAdmin: true,
  showComponentCategories: true,
  showPeripheralCategories: false,

  actions: {
    selectComponents() {
      this.set('showComponentCategories', true);
      this.set('showPeripheralCategories', false);
    },

    selectPeripherals() {
      this.set('showComponentCategories', false);
      this.set('showPeripheralCategories', true);
    }
  }
});
