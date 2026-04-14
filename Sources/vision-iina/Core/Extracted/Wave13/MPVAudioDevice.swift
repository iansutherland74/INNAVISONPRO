import Foundation

/// A mpv audio device.
struct MPVAudioDevice: CustomStringConvertible, Sendable {

  /// Human readable free form text describing the audio device.
  let desc: String

  /// `true` if this audio device is not currently connected.
  let isMissing: Bool

  /// Audio API-specific ID to use as mpv's `audio-device` option value.
  let name: String

  /// A readable device string suitable for display in menus or diagnostics.
  var description: String {
    guard isMissing else { return "[\(desc)] \(name)" }
    return "[\(desc) (missing)] \(name)"
  }

  /// Audio output driver required by this audio device (if applicable).
  var driver: String? {
    guard !name.starts(with: "avfoundation/") else { return "avfoundation" }
    guard !name.starts(with: "coreaudio/") else { return "coreaudio" }
    return nil
  }

  /// The `name` with the `<driver>/` prefix removed.
  private var nameWithoutDriver: String {
    guard let driver else { return name }
    return String(name.suffix(name.count - driver.count - 1))
  }

  /// Construct an audio device from a dictionary describing `name` and `description`.
  init?(_ device: [String: String]) {
    guard let desc = device["description"], let name = device["name"] else {
      return nil
    }
    self.desc = desc
    self.name = name
    isMissing = false
  }

  init(desc: String, name: String, isMissing: Bool = false) {
    self.desc = desc
    self.name = name
    self.isMissing = isMissing
  }

  /// Construct an audio device from an existing device, replacing the audio output driver.
  init(_ device: MPVAudioDevice, _ driver: String) {
    self.desc = device.desc
    self.name = "\(driver)/\(device.nameWithoutDriver)"
    isMissing = false
  }
}
