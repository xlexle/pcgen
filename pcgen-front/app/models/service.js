import DS from 'ember-data';

export default DS.Model.extend({
  serviceType: DS.attr('string'),
  description: DS.attr('string'),
  priceEur: DS.attr('number'),
  shop: DS.belongsTo('shop')
});
