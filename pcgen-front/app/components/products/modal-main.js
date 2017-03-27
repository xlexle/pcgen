import Ember from 'ember';

export default Ember.Component.extend({
  isAdmin: true,
  showGeneralData: true,
  showExternalData: false,
  showTechnicalData: false,

  actions: {
    selectGeneral() {
      this.set('showGeneralData', true);
      this.set('showExternalData', false);
      this.set('showTechnicalData', false);
    },

    selectExternal() {
      this.set('showGeneralData', false);
      this.set('showExternalData', true);
      this.set('showTechnicalData', false);
    },

    selectTechnical() {
      this.set('showGeneralData', false);
      this.set('showExternalData', false);
      this.set('showTechnicalData', true);
    }
  }
});
