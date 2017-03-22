import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('admin/products/product-modal', 'Integration | Component | admin/products/product modal', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{admin/products/product-modal}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#admin/products/product-modal}}
      template block text
    {{/admin/products/product-modal}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
