﻿! function (i) {
    "use strict";
    var n = function () {
        var n = this;
        i(document).ready(function () {
            n.initialize()
        })
    },
        t = n.prototype;
    n.SCREEN_XS = 480, n.SCREEN_SM = 768, n.SCREEN_MD = 992, n.SCREEN_LG = 1200, t._callFunctions = null, t._resizeTimer = null, t.initialize = function () {
        this._enableEvents(), this._initBreakpoints(), this._initInk(), this._initAccordion()
    }, t._enableEvents = function () {
        var n = this;
        i(window).on("resize", function (i) {
            clearTimeout(n._resizeTimer), n._resizeTimer = setTimeout(function () {
                n._handleFunctionCalls(i)
            }, 300)
        })
    }, t.getKnobStyle = function (n) {
        var t = n.closest(".knob");
        return {
            width: Math.floor(t.outerWidth()),
            height: Math.floor(t.outerHeight()),
            fgColor: t.css("color"),
            bgColor: t.css("border-top-color"),
            draw: function () {
                n.data("percentage") && i(this.i).val(this.cv + "%")
            }
        }
    }, t._initAccordion = function () {
        i(".panel-group .card .in").each(function () {
            i(this).parent().addClass("expanded")
        }), i(".panel-group").on("hide.bs.collapse", function (n) {
            i(n.target).parent().removeClass("expanded")
        }), i(".panel-group").on("show.bs.collapse", function (n) {
            var t = i(n.target).parent();
            t.closest(".panel-group").find(".card.expanded").removeClass("expanded"), t.addClass("expanded")
        })
    }, t._initInk = function () {
        var n = this;
        i(".ink-reaction").on("click", function (t) {
            var e = i(this).get(0).getBoundingClientRect(),
                a = (t.clientX, e.left, t.clientY, e.top, n.getBackground(i(this))),
                o = n.getLuma(a) > 183 ? " inverse" : "",
                s = i('<div class="ink' + o + '"></div>'),
                r = i(this).offset(),
                l = t.pageX - r.left,
                c = t.pageY - r.top;
            s.css({
                top: c,
                left: l
            }).appendTo(i(this)), window.setTimeout(function () {
                s.remove()
            }, 1500)
        })
    }, t.getBackground = function (i) {
        var n = i.css("background-color"),
            t = parseFloat(n.split(",")[3], 10);
        return (isNaN(t) || t > .8) && "transparent" !== n ? n : !i.is("body") && this.getBackground(i.parent())
    }, t.getLuma = function (i) {
        var n = i.substring(4, i.length - 1).split(",");
        return .2126 * n[0] + .7152 * n[1] + .0722 * n[2]
    }, t._initBreakpoints = function (n) {
        var t = "";
        t += '<div id="device-breakpoints">', t += '<div class="device-xs visible-xs" data-breakpoint="xs"></div>', t += '<div class="device-sm visible-sm" data-breakpoint="sm"></div>', t += '<div class="device-md visible-md" data-breakpoint="md"></div>', t += '<div class="device-lg visible-lg" data-breakpoint="lg"></div>', t += "</div>", i("body").append(t)
    }, t.isBreakpoint = function (n) {
        return i(".device-" + n).is(":visible")
    }, t.minBreakpoint = function (n) {
        var t = ["xs", "sm", "md", "lg"],
            e = i("#device-breakpoints div:visible").data("breakpoint");
        return i.inArray(n, t) < i.inArray(e, t)
    }, t.callOnResize = function (i) {
        null === this._callFunctions && (this._callFunctions = []), this._callFunctions.push(i), i.call()
    }, t._handleFunctionCalls = function (i) {
        if (null !== this._callFunctions)
            for (var n = 0; n < this._callFunctions.length; n++) this._callFunctions[n].call()
    }, window.materialadmin = window.materialadmin || {}, window.materialadmin.App = new n
}(jQuery);