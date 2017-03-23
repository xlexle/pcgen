import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('admin/products/modal-data-general', 'Integration | Component | admin/products/modal data general', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{admin/products/modal-data-general}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#admin/products/modal-data-general}}
      template block text
    {{/admin/products/modal-data-general}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
