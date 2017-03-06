import DS from 'ember-data';
import Ember from 'ember';

export default DS.JSONAPISerializer.extend({
  payloadKeyFromModelName(modelName) {
    return Ember.String.singularize(Ember.String.capitalize(modelName));
  },

  keyForAttribute(attr) {
    return Ember.String.underscore(attr);
  },

  keyForRelationship: function(attr) {
    return Ember.String.underscore(attr);
  }
});
