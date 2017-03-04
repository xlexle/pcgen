import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('admin/specs-power-supply', 'Integration | Component | admin/specs power supply', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{admin/specs-power-supply}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#admin/specs-power-supply}}
      template block text
    {{/admin/specs-power-supply}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
