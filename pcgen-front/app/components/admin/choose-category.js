import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['col-xs-7'],

  actions: {
    select(option) {
      this.attrs.onSelect(option);
    }
  }
});
