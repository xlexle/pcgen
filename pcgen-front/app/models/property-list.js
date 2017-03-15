import DS from 'ember-data';

export default DS.Model.extend({
  listed: DS.attr('boolean'),
  quality: DS.attr('number'),
  productName: DS.attr('string'),
  sku: DS.attr('string'),
  brand: DS.attr('string'),
  pricesUrl: DS.attr('string'),
  specsUrl: DS.attr('string'),
  description: DS.attr('string'),
  warranty: DS.attr('number'),
  lengthMm: DS.attr('number'),
  widthMm: DS.attr('number'),
  heightMm: DS.attr('number'),
  colors: DS.attr('string'),
  ledColor: DS.attr('string'),
  product: DS.belongsTo('product', { polymorphic: true })
});
