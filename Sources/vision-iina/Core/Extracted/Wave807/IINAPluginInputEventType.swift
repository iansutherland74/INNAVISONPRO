import Foundation

/// visionOS-safe extraction of plugin input event types and priority levels (JavascriptAPIInput.swift, Phase 3)
enum IINAPluginInputEvent: String, CaseIterable {
  case keyDown = "keyDown"
  case keyUp = "keyUp"
  case mouseUp = "mouseUp"
  case mouseDown = "mouseDown"
  case mouseDrag = "mouseDrag"

  var isKeyEvent: Bool {
    return self == .keyDown || self == .keyUp
  }

  var isMouseEvent: Bool {
    return self == .mouseUp || self == .mouseDown || self == .mouseDrag
  }
}

enum IINAPluginInputPriority: Int, CaseIterable {
  case low = 0
  case high = 100

  static let `default` = IINAPluginInputPriority.low
}
