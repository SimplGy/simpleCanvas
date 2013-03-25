/*globals define */

define(
    [
        'backbone',
        'app',
        'dolla',
        'text!./home.tmpl.html'
    ],
    function(Backbone, app, $, tmpl) {
        var me = 'shaper/pages/home.view',
            Page

        Page = Backbone.View.extend({
            template: _.template(tmpl),
            initialize: function() {

            },
            render: function() {
                this.$el.html(
                    this.template()
                )
                return this
            }
        })
        return Page
    }
)
