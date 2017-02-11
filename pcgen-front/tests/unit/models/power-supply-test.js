import { moduleForModel, test } from 'ember-qunit';

moduleForModel('power-supply', 'Unit | Model | power supply', {
  // Specify the other units that are required for this test.
  needs: ['model:property-list', 'model:fan', 'model:product-conflict', 'model:source']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
