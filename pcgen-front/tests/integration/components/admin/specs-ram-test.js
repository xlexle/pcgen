import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('admin/specs-ram', 'Integration | Component | admin/specs ram', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{admin/specs-ram}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#admin/specs-ram}}
      template block text
    {{/admin/specs-ram}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
