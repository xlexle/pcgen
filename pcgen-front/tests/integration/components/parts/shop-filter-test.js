import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('parts/shop-filter', 'Integration | Component | parts/shop filter', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{parts/shop-filter}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#parts/shop-filter}}
      template block text
    {{/parts/shop-filter}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
