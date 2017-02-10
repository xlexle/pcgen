import DS from 'ember-data';

export default DS.Model.extend({
  propertyList: DS.belongsTo('property-list'),
  sources: DS.hasMany('source')
});
