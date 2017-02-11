import { moduleForModel, test } from 'ember-qunit';

moduleForModel('shop', 'Unit | Model | shop', {
  // Specify the other units that are required for this test.
  needs: ['model:source', 'model:service']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
