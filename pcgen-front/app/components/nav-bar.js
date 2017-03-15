import Ember from 'ember';

export default Ember.Component.extend({

});

Ember.LinkComponent.reopen({
  attributeBindings: ['data-toggle', 'data-target']
});
