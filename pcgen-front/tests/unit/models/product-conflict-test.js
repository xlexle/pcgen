import { moduleForModel, test } from 'ember-qunit';

moduleForModel('product-conflict', 'Unit | Model | product conflict', {
  // Specify the other units that are required for this test.
  needs: ['model:product', 'model:conflict']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
