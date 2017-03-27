import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('products/tabs-navigation', 'Integration | Component | products/tabs navigation', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{products/tabs-navigation}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#products/tabs-navigation}}
      template block text
    {{/products/tabs-navigation}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
