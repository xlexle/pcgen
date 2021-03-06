import DS from 'ember-data';
import Ember from 'ember';
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
  propertyList: DS.belongsTo('property-list'),
  // fan: DS.belongsTo('fan'),

  // quantity of PCIe of connectors as a string
  pcieConnectors: Ember.computed('pcie8pinQty', 'pcie6pinQty', function() {
    let eights = this.get('pcie8pinQty');
    let sixes = this.get('pcie6pinQty');
    let connectors = "";

    if (eights !== 0) {
      connectors += eights + " x 8-pin";
      if (sixes !== 0) {
        connectors += ", ";
      }
    }

    if (sixes !== 0) {
      connectors += sixes + " x 6-pin";
    }

    return connectors;
  }),

  // cables type
  cables: Ember.computed('fullModular', 'semiModular', function() {
    if (this.get('fullModular')) { return "täysmodulaariset"; }
    if (this.get('semiModular')) { return "semimodulaariset"; }
    return "kiinteät";
  })
});
