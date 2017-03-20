import Ember from 'ember';
import JSONAPIAdapter from 'ember-data/adapters/json-api';

const { String: { pluralize, underscore } } = Ember;

export default JSONAPIAdapter.extend({

  // makes sure HTTP requests point to the correct API controllers
  pathForType(type) {
    return pluralize(underscore(type));
  }
});
