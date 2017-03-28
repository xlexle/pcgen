import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'tr',
  isEditing: false,
  value: null,
  key: null,

  actions: {
    enableEditing(key, value) {
      this.set('key', key);
      this.set('value', value);
      this.set('isEditing', true);
    },

    cancelEditing() {
      this.set('value', null);
      this.set('key', null);
      this.set('isEditing', false);
    },

    applyChange() {
      this.set('isEditing', false);

      // calls parent controller's updateSelectedItem function
      this.get('onApplyChange')(this.get('key'), this.get('value'));
    }
  }
});
