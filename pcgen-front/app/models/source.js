import DS from 'ember-data';

export default DS.Model.extend({
  priceEur: DS.attr('number'),
  deliveryTimeMin: DS.attr('number'),
  deliveryTimeMax: DS.attr('number'),
  deliveryCostMin: DS.attr('number'),
  shopUrl: DS.attr('string'),
  product: DS.belongsTo('product', { polymorphic: true }),
  shop: DS.belongsTo('shop')
});
