const { environment } = require('@rails/webpacker');

// added for bootstrap
const webpack = require('webpack');

environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default'],
  })
);
// end added

module.exports = environment;
