import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('admin/specs-wlan', 'Integration | Component | admin/specs wlan', {
  integration: true
});

test('it renders', function(assert) {

  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{admin/specs-wlan}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#admin/specs-wlan}}
      template block text
    {{/admin/specs-wlan}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
