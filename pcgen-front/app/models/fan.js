import DS from 'ember-data';
import Product from './product';

export default Product.extend({
  bearing: DS.attr('string'),
  minRpm: DS.attr('number'),
  maxRpm: DS.attr('number'),
  startingVoltage: DS.attr('number'),
  maxAmps: DS.attr('number'),
  mtbfHours: DS.attr('number'),
  hasPwm: DS.attr('boolean'),
  highPressure: DS.attr('boolean'),
  quiet: DS.attr('boolean'),
  thicknessMm: DS.attr('number'),
  // coolerFanSlots: DS.hasMany('cooler-fan-slot'),
  // caseFanSlots: DS.hasMany('case-fan-slot'),
  powerSupplies: DS.hasMany('power-supply')
});
