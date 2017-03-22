import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('admin/products/list-components', 'Integration | Component | admin/products/list components', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{admin/products/list-components}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#admin/products/list-components}}
      template block text
    {{/admin/products/list-components}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
