// Wave829: extracted from JavascriptPolyfill.swift
// JavaScript polyfill global function names injected into the JS context

struct IINAPolyfillFunctionName {
    static let setInterval   = "setInterval"
    static let setTimeout    = "setTimeout"
    static let clearInterval = "clearInterval"
    static let clearTimeout  = "clearTimeout"
    static let requireNative = "__require__"
    static let require       = "require"

    static var all: [String] {
        [setInterval, setTimeout, clearInterval, clearTimeout, requireNative, require]
    }
}
