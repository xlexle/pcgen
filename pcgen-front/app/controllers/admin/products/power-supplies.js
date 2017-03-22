import Ember from 'ember';

export default Ember.Controller.extend({
  count: Ember.computed.alias('model.length'),
  selectedItem: null,

  actions: {
    setSelectedItem(item) {
      this.set("selectedItem", item);
    }
  }
});

// unneeded?
Ember.LinkComponent.reopen({
  attributeBindings: ['data-toggle', 'data-target']
});
