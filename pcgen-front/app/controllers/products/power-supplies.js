import Ember from 'ember';

export default Ember.Controller.extend({
  store: Ember.inject.service(),
  count: Ember.computed.alias('model.length'),
  selectedItem: null,
  activeTab: "general",

  actions: {
    setSelectedItem(item) {
      this.set("selectedItem", item);
    },

    setActiveTab(tab) {
      this.set("activeTab", tab);
    },

    updateSelectedItem(key, value){
      let product = this.get('selectedItem');

      product.set(key, value);
      product.save().catch((adapterError) => {
        console.log(adapterError);
        console.log("Product is valid: " + product.get('isValid'));
        console.log(product);
      });
    },

    updateSelectedItemPropertyList(key, value){
      this.get('selectedItem').get('propertyList').then((propertyList) => {
        propertyList.set(key, value);
        propertyList.save().catch((adapterError) => {
          console.log(adapterError);
          console.log("PropertyList is valid: " + propertyList.get('isValid'));
          console.log(propertyList);
        });
      });
    }
  }
});
