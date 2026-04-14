// Wave840: extracted from Preference.swift
// UI/OSD/codec preference key raw strings

struct IINAPreferenceKeyUI {
    static let themeMaterial                  = "themeMaterial"
    static let enableOSD                      = "enableOSD"
    static let osdAutoHideTimeout             = "osdAutoHideTimeout"
    static let osdTextSize                    = "osdTextSize"
    static let oscPosition                    = "oscPosition"
    static let controlBarAutoHideTimeout      = "controlBarAutoHideTimeout"
    static let enableControlBarAutoHide       = "enableControlBarAutoHide"
    static let playlistWidth                  = "playlistWidth"
    static let enableThumbnailPreview         = "enableThumbnailPreview"
    static let thumbnailWidth                 = "thumbnailWidth"
    static let autoSwitchToMusicMode          = "autoSwitchToMusicMode"
    static let displayTimeAndBatteryInFullScreen = "displayTimeAndBatteryInFullScreen"
    static let disableAnimations              = "disableAnimations"
    static let hardwareDecoder                = "hardwareDecoder"
    static let enableHdrSupport               = "enableHdrSupport"
    static let softVolume                     = "softVolume"
    static let maxVolume                      = "maxVolume"
    static let audioLanguage                  = "audioLanguage"
    static let gaplessAudio                   = "gaplessAudio"

    static let all: [String] = [
        themeMaterial, enableOSD, osdAutoHideTimeout, osdTextSize, oscPosition,
        controlBarAutoHideTimeout, enableControlBarAutoHide, playlistWidth,
        enableThumbnailPreview, thumbnailWidth, autoSwitchToMusicMode,
        displayTimeAndBatteryInFullScreen, disableAnimations, hardwareDecoder,
        enableHdrSupport, softVolume, maxVolume, audioLanguage, gaplessAudio
    ]
}
