import DS from 'ember-data';

export default DS.Model.extend({
  propertyList: DS.belongsTo('property-list'),
  productConflicts: DS.hasMany('product-conflict'),
  sources: DS.hasMany('source')
});
