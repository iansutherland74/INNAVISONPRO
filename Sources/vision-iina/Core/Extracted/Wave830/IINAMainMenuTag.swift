// Wave830: extracted from MainMenuActions.swift (MainWindowMenuActions.swift)
// NSMenuItem tag constants used in the main menu action handler

enum IINAMenuTrackTag: Int, CaseIterable {
    case video = 0
    case audio = 1
    case sub   = 2
}

enum IINAMenuStepTag: Int, CaseIterable {
    case forward  = 0
    case backward = 1
}

struct IINAMenuSpeedTag {
    /// Tag value that resets playback speed to 1×
    static let reset = 5
}
