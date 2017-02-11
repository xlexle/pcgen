import DS from 'ember-data';

export default DS.Model.extend({
  reason: DS.attr('string'),
  strict: DS.attr('boolean'),
  productConflicts: DS.hasMany('product-conflict')
});
