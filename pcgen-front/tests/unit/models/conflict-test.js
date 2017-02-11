import { moduleForModel, test } from 'ember-qunit';

moduleForModel('conflict', 'Unit | Model | conflict', {
  // Specify the other units that are required for this test.
  needs: ['model:product-conflict']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
