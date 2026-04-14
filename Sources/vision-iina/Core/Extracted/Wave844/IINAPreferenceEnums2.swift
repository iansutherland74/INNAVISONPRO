// Wave844: extracted from Preference.swift
// SubOverrideLevel, SubAlign, ScreenshotFormat, RTSPTransportation, HardwareDecoderOption

enum IINAPreferenceSubOverrideLevel: Int, CaseIterable {
    case yes    = 0
    case force  = 1
    case strip  = 2
    case scale  = 3
    case no     = 4

    var mpvString: String {
        switch self {
        case .yes:   return "yes"
        case .force: return "force"
        case .strip: return "strip"
        case .scale: return "scale"
        case .no:    return "no"
        }
    }
}

enum IINAPreferenceSubAlign: Int, CaseIterable {
    case top    = 0
    case center = 1
    case bottom = 2

    var stringForX: String {
        switch self {
        case .top:    return "left"
        case .center: return "center"
        case .bottom: return "right"
        }
    }

    var stringForY: String {
        switch self {
        case .top:    return "top"
        case .center: return "center"
        case .bottom: return "bottom"
        }
    }
}

enum IINAPreferenceScreenshotFormat: Int, CaseIterable {
    case png  = 0
    case jpg  = 1
    case jpeg = 2
    case webp = 3
    case jxl  = 4

    var string: String {
        switch self {
        case .png:  return "png"
        case .jpg:  return "jpg"
        case .jpeg: return "jpeg"
        case .webp: return "webp"
        case .jxl:  return "jxl"
        }
    }
}

enum IINAPreferenceRTSPTransportation: Int, CaseIterable {
    case lavf = 0
    case tcp  = 1
    case udp  = 2
    case http = 3

    var string: String {
        switch self {
        case .lavf: return "lavf"
        case .tcp:  return "tcp"
        case .udp:  return "udp"
        case .http: return "http"
        }
    }
}

enum IINAPreferenceHardwareDecoder: Int, CaseIterable {
    case disabled = 0
    case auto     = 1
    case autoCopy = 2

    var mpvString: String {
        switch self {
        case .disabled: return "no"
        case .auto:     return "auto"
        case .autoCopy: return "auto-copy"
        }
    }
}
