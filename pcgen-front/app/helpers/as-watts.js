import Ember from 'ember';

export function asWatts(amps) {
  let watts = parseInt(amps) * 12;
  return watts + "W";
}

export default Ember.Helper.helper(asWatts);
