import DS from 'ember-data';
import Product from './product';

export default Product.extend({
  formFactor: DS.attr('string'),
  amps12v: DS.attr('number'),
  fullModular: DS.attr('boolean'),
  semiModular: DS.attr('boolean'),
  efficiency: DS.attr('string'),
  oem: DS.attr('string'),
  semipassive: DS.attr('boolean'),
  hasFanSwitch: DS.attr('boolean'),
  quiet: DS.attr('boolean'),
  epsLengthCm: DS.attr('number'),
  pcie8pinQty: DS.attr('number'),
  pcie6pinQty: DS.attr('number'),
  sataQty: DS.attr('number'),
  hasPrettyCables: DS.attr('boolean'),
  powerSupplyFanSlot: DS.belongsTo('power-supply-fan-slot')
});
