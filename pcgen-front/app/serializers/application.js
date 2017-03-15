import DS from 'ember-data';
import Ember from 'ember';

const { String: { singularize, camelize, underscore, capitalize } } = Ember;

export default DS.JSONAPISerializer.extend({
  payloadKeyFromModelName(modelName) {
    let converted = singularize(camelize(capitalize(modelName)));
    console.log(converted);
    return converted;
  }
  //
  // keyForAttribute(attr) {
  //   return underscore(attr);
  // },
  //
  // keyForRelationship: function(attr) {
  //   return underscore(attr);
  // }
});
