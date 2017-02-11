import DS from 'ember-data';

export default DS.Model.extend({
  product: DS.belongsTo('product', { polymorphic: true }),
  conflict: DS.belongsTo('conflict')
});
