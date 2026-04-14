// Wave825: extracted from JavascriptPluginInstance.swift
// Keys used to register plugin API objects into the iina JS namespace

enum IINAPluginAPINamespace: String, CaseIterable {
    // Always registered (global + per-player)
    case menu             = "menu"
    case standaloneWindow = "standaloneWindow"
    case utils            = "utils"
    case file             = "file"
    case preferences      = "preferences"
    case console          = "console"
    case http             = "http"
    case ws               = "ws"
    case global           = "global"
    // Per-player only
    case core             = "core"
    case mpv              = "mpv"
    case event            = "event"
    case overlay          = "overlay"
    case sidebar          = "sidebar"
    case playlist         = "playlist"
    case subtitle         = "subtitle"
    case input            = "input"
}
