import DS from 'ember-data';
import Ember from 'ember';

const { String: { singularize, camelize, dasherize, underscore, capitalize } } = Ember;

export default DS.JSONAPISerializer.extend({

  // Converts "model-names" to "ModelName" for sending data to API
  payloadKeyFromModelName(modelName) {
    let converted = singularize(capitalize(camelize(modelName)));
    console.log(converted);
    return converted;
  },

  // Converts "attribute-key" to "attribute_key" in PUT/POST requests
  keyForAttribute(attr, method) {
    if (method === "serialize") {
      return underscore(attr);
    } else {
      return dasherize(attr);
    }
  },

  // Converts "relationship-key" to "relationship_key" in PUT/POST requests
  keyForRelationship: function(key, relationship, method) {
    if (method === "serialize") {
      return underscore(key);
    } else {
      return dasherize(key);
    }
  }
});
