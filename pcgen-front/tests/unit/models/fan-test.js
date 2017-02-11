import { moduleForModel, test } from 'ember-qunit';

moduleForModel('fan', 'Unit | Model | fan', {
  // Specify the other units that are required for this test.
  needs: [
    'model:property-list',
    'model:power-supply',
    // 'model:cooler-fan-slot',
    // 'model:case-fan-slot',
    'model:product-conflict',
    'model:source'
  ]
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
