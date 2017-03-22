import Ember from 'ember';

export default Ember.Controller.extend({
  activeCategory: "",

  actions: {
    selectCategory(option) {
      this.set('activeCategory', option);
    },

    setLed(propertyList, event) {
      propertyList.set('ledColor', event.target.value);
    }
  }
});
