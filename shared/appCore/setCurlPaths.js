/*globals curl */

curl({
    baseUrl: './', // Refers to /app1 because that's where this index.html file is
    paths: {
        'app':          '../shared/appCore/app',
        'underscore':   '../shared/lib/underscore/underscore',
        'backbone':		'../shared/lib/backbone/backbone',
        'dolla':        '../shared/lib/jquery/jquery-1.9.1.min' //'../shared/lib/zepto/dist/zepto'
    }
});
