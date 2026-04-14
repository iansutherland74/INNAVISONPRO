// Wave813: extracted from JavascriptAPIMpv.swift
// mpv property value type categories used when dispatching set() operations

enum IINAMpvValueType: String, CaseIterable {
    case number  = "number"
    case string  = "string"
    case boolean = "boolean"
    case object  = "object"

    static let unsupportedSetMessage =
        "mpv.set only supports numbers, strings, booleans and objects."
}
