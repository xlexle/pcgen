import DS from 'ember-data';
import Ember from 'ember';

const { String: { singularize, camelize, underscore, capitalize } } = Ember;

export default DS.JSONAPISerializer.extend({

  // Converts "model-names" to "ModelName" for sending data to API
  payloadKeyFromModelName(modelName) {
    let converted = singularize(capitalize(camelize(modelName)));
    console.log(converted);
    return converted;
  },

  keyForAttribute(attr) {
    return underscore(attr);
  },

  keyForRelationship: function(attr) {
    return underscore(attr);
  }
});
