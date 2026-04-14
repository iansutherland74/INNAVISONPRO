// Wave831: extracted from MPVController.swift
// mpv log level name constants and their mapping to IINA Logger.Level

struct IINAMPVBoolString {
    static let yes = "yes"
    static let no  = "no"
}

struct IINAMPVLogLevelName {
    static let fatal  = "fatal"
    static let error  = "error"
    static let warn   = "warn"
    static let info   = "info"
    static let status = "status"
    static let v      = "v"
    static let debug  = "debug"
    static let trace  = "trace"
    static let defaultLevel = warn

    static let all: [String] = [fatal, error, warn, info, status, v, debug, trace]
}
