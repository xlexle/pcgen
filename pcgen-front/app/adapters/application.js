// import ActiveModelAdapter from 'active-model-adapter';
//
// export default ActiveModelAdapter.extend();

import Ember from 'ember';
import JSONAPIAdapter from 'ember-data/adapters/json-api';

const { String: { pluralize, underscore } } = Ember;

export default JSONAPIAdapter.extend({
  pathForType(type) {
    return pluralize(underscore(type));
  }
});
