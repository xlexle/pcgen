import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('products/modal-tab-general', 'Integration | Component | products/modal tab general', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{products/modal-tab-general}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#products/modal-tab-general}}
      template block text
    {{/products/modal-tab-general}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
