import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('parts/tile-prices', 'Integration | Component | parts/tile prices', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{parts/tile-prices}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#parts/tile-prices}}
      template block text
    {{/parts/tile-prices}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
