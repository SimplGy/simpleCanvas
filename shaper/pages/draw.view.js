/*globals define */

define(
    [
        'backbone',
        'dolla',
        'text!./draw.tmpl.html'
    ],
    function(Backbone, $, tmpl) {
        var me = 'shaper/pages/draw.view',
            Page

        // Private
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



