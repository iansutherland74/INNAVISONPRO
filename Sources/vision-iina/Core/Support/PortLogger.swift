import Foundation

enum PortLogger {
    struct Subsystem: RawRepresentable, Hashable, Sendable {
        let rawValue: String

        init(rawValue: String) {
            self.rawValue = rawValue
        }

        static let general = Subsystem(rawValue: "vision-iina")
    }

    enum Level: Int, Comparable, Sendable {
        case verbose
        case debug
        case warning
        case error

        static func < (lhs: Level, rhs: Level) -> Bool {
            lhs.rawValue < rhs.rawValue
        }

        var label: String {
            switch self {
            case .verbose: return "v"
            case .debug: return "d"
            case .warning: return "w"
            case .error: return "e"
            }
        }
    }

    static func makeSubsystem(_ rawValue: String) -> Subsystem {
        Subsystem(rawValue: LoggerCore.subsystem(rawValue))
    }

    static func log(
        _ message: @autoclosure () -> String,
        level: Level = .debug,
        subsystem: Subsystem = .general
    ) {
#if DEBUG
        print("[\(subsystem.rawValue)][\(level.label)] \(message())")
#endif
    }
}
