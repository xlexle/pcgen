import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    select(option) {
      this.attrs.onSelect(option);
    }
  }
});
