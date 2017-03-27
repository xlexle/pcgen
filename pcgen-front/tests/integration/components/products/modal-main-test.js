import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('products/modal-main', 'Integration | Component | products/modal main', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{products/modal-main}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#products/modal-main}}
      template block text
    {{/products/modal-main}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
