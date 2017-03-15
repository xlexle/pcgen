import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return Ember.RSVP.hash({
      propertyList: this.store.createRecord('property-list'),
      product: this.store.createRecord('power-supply')
    });
  },

  actions: {
    saveNewProduct(newPropertyList, newProduct) {
      newProduct.set('propertyList', newPropertyList);
      newPropertyList.set('product', newProduct);

      newProduct.save()
      .then(() => newPropertyList.save())
      .then(() => window.location.reload(true))
      .catch((adapterError) => {
        console.log(adapterError);

        console.log(newProduct.get('isValid'));
        console.log(newProduct);
        if (newProduct.get('isValid')) {
          newProduct.destroyRecord();
        }

        console.log(newPropertyList.get('isValid'));
        console.log(newPropertyList);
      });
    }
  }
});
