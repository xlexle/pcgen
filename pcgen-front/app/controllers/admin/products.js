import Ember from 'ember';

export default Ember.Controller.extend({
  showComponentsList: true,
  showPeripheralsList: false,

  actions: {
    selectComponents() {
      this.set('showComponentsList', true);
      this.set('showPeripheralsList', false);
    },

    selectPeripherals() {
      this.set('showComponentsList', false);
      this.set('showPeripheralsList', true);
    }
  }
});
