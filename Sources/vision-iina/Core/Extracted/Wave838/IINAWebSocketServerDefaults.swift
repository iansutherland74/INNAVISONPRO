// Wave838: extracted from WebSocketServer.swift
// WebSocket server NWParameters options and frame identifier constants

struct IINAWebSocketServerDefaults {
    static let queueLabelPrefix   = "IINAWebSocketServer."
    static let pongContextID      = "pong"
    static let messageContextID   = "message"
    static let logSubsystem       = "ws-server"
    static let allowLocalEndpointReuse = true
    static let includePeerToPeer       = true
    static let autoReplyPing           = true

    static func makeQueueLabel(serverLabel: String) -> String {
        return "\(queueLabelPrefix)\(serverLabel)"
    }
}
