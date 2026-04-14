// Wave823: extracted from JavascriptMessageHub.swift
// JS bridge window.iina object keys and postMessage envelope structure

struct IINAMessageBridgeKey {
    static let iinaGlobal   = "iina"
    static let listeners    = "listeners"
    static let emitFn       = "_emit"
    static let simpleModeSetStyle   = "_simpleModeSetStyle"
    static let simpleModeSetContent = "_simpleModeSetContent"
    static let onMessageFn  = "onMessage"
    static let postMessageFn = "postMessage"

    /// Index of the event name in the webkit.messageHandlers envelope array
    static let envelopeNameIndex: Int = 0
    /// Index of the serialized data in the webkit.messageHandlers envelope array
    static let envelopeDataIndex: Int = 1
    static let envelopeCount:     Int = 2
}
