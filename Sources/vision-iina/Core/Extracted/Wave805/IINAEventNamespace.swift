import Foundation

/// visionOS-safe extraction of IINA/mpv event namespace parser (JavascriptAPIEvent.swift, Phase 3)
enum IINAEventNamespace: String, CaseIterable {
  case mpv = "mpv"
  case iina = "iina"
}

struct IINAParsedEvent {
  let namespace: IINAEventNamespace
  let name: String
  let isPropertyChanged: Bool

  static func parse(from event: String) -> IINAParsedEvent? {
    let parts = event.split(separator: ".").map(String.init)
    guard parts.count == 2 || (parts.count == 3 && parts[2] == "changed") else { return nil }
    guard let ns = IINAEventNamespace(rawValue: parts[0]) else { return nil }
    return IINAParsedEvent(namespace: ns, name: parts[1], isPropertyChanged: parts.count == 3)
  }
}
