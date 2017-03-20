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

      newProduct.save().then(() => {

        newPropertyList.save().then(() => {
          window.location.reload(true)
        }).catch((adapterError) => {
          newProduct.destroyRecord().then(() => {
            console.log(adapterError);

            console.log("PropertyList is valid: " + newPropertyList.get('isValid'));
            console.log(newPropertyList);
          })
        });

      }).catch((adapterError) => {
        newPropertyList.destroyRecord().then(() => {
          console.log(adapterError);

          console.log("Product is valid: " + newProduct.get('isValid'));
          console.log(newProduct);
        })
      });
    }
  }
});
