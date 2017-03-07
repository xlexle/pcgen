import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    // return this.store.createRecord('property-list')
    return Ember.RSVP.hash({
      propertyList: this.store.createRecord('property-list'),
      product: this.store.createRecord('power-supply')
    });
  },

  actions: {
    saveNewProduct(newPropertyList, newProduct) {
      newPropertyList.save()
      .then(() => window.location.reload(true))
      .catch((adapterError) => {
        console.log(adapterError);
        console.log(newPropertyList.get('isValid'));
        console.log(newPropertyList);
      });
    }
  }
});
