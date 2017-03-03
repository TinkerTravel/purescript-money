'use strict';

exports['showDiscrete\''] = function(n) {
  return function(d) {
    return (n / Math.pow(10, d)).toFixed(d);
  };
};
