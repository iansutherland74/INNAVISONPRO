// Wave842: extracted from Preference.swift
// Network/cache/ytdl preference key raw strings

struct IINAPreferenceKeyNetwork {
    static let enableCache         = "enableCache"
    static let defaultCacheSize    = "defaultCacheSize"
    static let cacheBufferSize     = "cacheBufferSize"
    static let secPrefetch         = "secPrefetch"
    static let userAgent           = "userAgent"
    static let transportRTSPThrough = "transportRTSPThrough"
    static let ytdlEnabled         = "ytdlEnabled"
    static let ytdlRaw             = "ytdlRaw"
    static let ytdlSearchPath      = "ytdlSearchPath"
    static let httpProxy           = "httpProxy"
    static let enableLogging       = "enableLogging"
    static let logLevel            = "logLevel"
    static let spdifAC3            = "spdifAC3"
    static let spdifDTS            = "spdifDTS"
    static let spdifDTSHD          = "spdifDTSHD"

    static let all: [String] = [
        enableCache, defaultCacheSize, cacheBufferSize, secPrefetch,
        userAgent, transportRTSPThrough, ytdlEnabled, ytdlRaw, ytdlSearchPath,
        httpProxy, enableLogging, logLevel, spdifAC3, spdifDTS, spdifDTSHD
    ]
}
