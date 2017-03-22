import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.findAll('power-supply');
    // .catch(adapterError => {
    //   console.log("do nothing");
    // });
  }

  // actions: {
  //   error: function (error) {
  //     console.log(error);
  //   }
  // }
});
