import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'tbody',

  actions: {
    requestUpdatePropertyList(key, value) {
      this.get('onRequestUpdatePropertyList')(key, value);
    }
  }
});
