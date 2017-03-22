import Ember from 'ember';

export default Ember.Controller.extend({
  count: Ember.computed.alias('model.length')
});
