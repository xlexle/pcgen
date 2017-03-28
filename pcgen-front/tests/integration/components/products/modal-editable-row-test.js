import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('products/modal-editable-row', 'Integration | Component | products/modal editable row', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{products/modal-editable-row}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#products/modal-editable-row}}
      template block text
    {{/products/modal-editable-row}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
