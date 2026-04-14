// Wave834: extracted from PluginInputManager.swift
// Mouse button virtual input names and input dispatch priority levels

struct IINAPluginMouseInputName {
    static let mouse       = "*mouse"
    static let rightMouse  = "*rightMouse"
    static let otherMouse  = "*otherMouse"

    static let all: [String] = [mouse, rightMouse, otherMouse]

    static func isMouseInput(_ name: String) -> Bool {
        return name.hasPrefix("*")
    }
}

struct IINAPluginInputDispatchPriority {
    static let low  = 100
    static let high = 200

    static func isHigh(_ value: Int) -> Bool { value >= high }
    static func isLow(_ value: Int) -> Bool  { value < high }
}
