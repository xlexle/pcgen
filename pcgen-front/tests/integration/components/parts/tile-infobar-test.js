import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('parts/tile-infobar', 'Integration | Component | parts/tile infobar', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{parts/tile-infobar}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#parts/tile-infobar}}
      template block text
    {{/parts/tile-infobar}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
