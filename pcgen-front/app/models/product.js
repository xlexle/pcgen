import DS from 'ember-data';

export default DS.Model.extend({
  propertyList: DS.belongsTo('property-list'),
  productConflicts: DS.hasMany('product-conflict'),
  sources: DS.hasMany('source'),

  sortProperties: ['priceEur:asc'],
  sortedSources: Ember.computed.sort('sources', 'sortProperties'),
  cheapestThreeSources: Ember.computed.filter('sortedSources', function(source, index) {
    return (index < 3);
  })
});
