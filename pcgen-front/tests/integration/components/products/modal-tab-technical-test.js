import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('products/modal-tab-technical', 'Integration | Component | products/modal tab technical', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{products/modal-tab-technical}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#products/modal-tab-technical}}
      template block text
    {{/products/modal-tab-technical}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
