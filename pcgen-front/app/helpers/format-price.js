import Ember from 'ember';

export function formatPrice(value) {
  let euros = Math.floor(value);
  let cents = asInteger(value - euros);
  if (cents === 0) { cents = "00" };

  function asInteger(centsDec) {
    let rounded = Number(Math.round(centsDec + 'e2')+'e-2');
    return parseInt(100 * rounded);
  }

  return euros + "," + cents + " €";
}

export default Ember.Helper.helper(formatPrice);
