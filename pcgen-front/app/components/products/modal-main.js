import Ember from 'ember';

export default Ember.Component.extend({
  isAdmin: true,
  selectedTab: "general",

  actions: {
    selectTab(value) {
      this.set('selectedTab', value);
      this.get('onSelectTab')(this.get('selectedTab'));
    }
  }
});
