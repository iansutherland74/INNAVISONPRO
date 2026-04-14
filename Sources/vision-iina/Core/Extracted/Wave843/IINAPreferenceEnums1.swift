// Wave843: extracted from Preference.swift
// SeekOption, OSCPosition, MouseClickAction, ScrollAction enums

enum IINAPreferenceSeekOption: Int, CaseIterable {
    case relative   = 0
    case exact      = 1
    case auto       = 2
}

enum IINAPreferenceOSCPosition: Int, CaseIterable {
    case floating   = 0
    case top        = 1
    case bottom     = 2
}

enum IINAPreferenceMouseClickAction: Int, CaseIterable {
    case none           = 0
    case fullscreen     = 1
    case pause          = 2
    case hideOSC        = 3
    case togglePIP      = 4
    case abLoop         = 5
    case resetPlaybackSpeed = 6
}

enum IINAPreferenceScrollAction: Int, CaseIterable {
    case volume         = 0
    case seek           = 1
    case none           = 2
    case passToMpv      = 3
    case playbackSpeed  = 4
}
