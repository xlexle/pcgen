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
      // console.log(newPropertyList);
      newPropertyList.save()
      // .then(() => this.transitionTo('admin'))
      .then(() => window.location.reload(true))
      // .catch((adapterError) => {
        // console.log(adapterError);
        // console.log(newPropertyList.get('isValid'));
        // console.log(newPropertyList);
      // });
      // newPropertyList.save()
      // .then(() => newProduct.save())
      // .then(() => this.transitionTo('admin'));
    }
  }
});
