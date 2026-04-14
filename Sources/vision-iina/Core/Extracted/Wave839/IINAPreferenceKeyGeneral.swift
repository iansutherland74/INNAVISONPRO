// Wave839: extracted from Preference.swift
// General/launch/behaviour preference key raw strings

struct IINAPreferenceKeyGeneral {
    static let actionAfterLaunch              = "actionAfterLaunch"
    static let alwaysOpenInNewWindow          = "alwaysOpenInNewWindow"
    static let allowDuplicatePlayers          = "allowDuplicatePlayers"
    static let pauseWhenOpen                  = "pauseWhenOpen"
    static let fullScreenWhenOpen             = "fullScreenWhenOpen"
    static let keepOpenOnFileEnd              = "keepOpenOnFileEnd"
    static let resumeLastPosition             = "resumeLastPosition"
    static let quitWhenNoOpenedWindow         = "quitWhenNoOpenedWindow"
    static let alwaysFloatOnTop               = "alwaysFloatOnTop"
    static let pauseWhenMinimized             = "pauseWhenMinimized"
    static let pauseWhenInactive              = "pauseWhenInactive"
    static let playWhenEnteringFullScreen     = "playWhenEnteringFullScreen"
    static let pauseWhenLeavingFullScreen     = "pauseWhenLeavingFullScreen"
    static let pauseWhenGoesToSleep           = "pauseWhenGoesToSleep"
    static let autoRepeat                     = "autoRepeat"
    static let screenshotSaveToFile           = "screenshotSaveToFile"
    static let screenshotCopyToClipboard      = "screenshotCopyToClipboard"
    static let screenshotFolder               = "screenShotFolder"
    static let screenshotFormat               = "screenShotFormat"
    static let preventScreenSaver             = "preventScreenSaver"

    static let all: [String] = [
        actionAfterLaunch, alwaysOpenInNewWindow, allowDuplicatePlayers,
        pauseWhenOpen, fullScreenWhenOpen, keepOpenOnFileEnd, resumeLastPosition,
        quitWhenNoOpenedWindow, alwaysFloatOnTop, pauseWhenMinimized,
        pauseWhenInactive, playWhenEnteringFullScreen, pauseWhenLeavingFullScreen,
        pauseWhenGoesToSleep, autoRepeat, screenshotSaveToFile,
        screenshotCopyToClipboard, screenshotFolder, screenshotFormat, preventScreenSaver
    ]
}
