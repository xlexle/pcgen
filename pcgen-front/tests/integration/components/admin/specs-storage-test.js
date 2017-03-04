import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('admin/specs-storage', 'Integration | Component | admin/specs storage', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{admin/specs-storage}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#admin/specs-storage}}
      template block text
    {{/admin/specs-storage}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
