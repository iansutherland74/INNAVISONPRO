// Wave821: extracted from JavascriptAPIWebSocket.swift
// WebSocket listener/connection state string tokens and send-result codes

enum IINAWebSocketListenerState: String, CaseIterable {
    case setup     = "setup"
    case waiting   = "waiting"
    case ready     = "ready"
    case failed    = "failed"
    case cancelled = "cancelled"
}

enum IINAWebSocketSendResult: String, CaseIterable {
    case success      = "success"
    case noConnection = "no_connection"
}

struct IINAWebSocketErrorKey {
    static let description = "description"
    static let message     = "message"
}
