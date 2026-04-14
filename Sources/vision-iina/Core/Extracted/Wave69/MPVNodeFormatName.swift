import Foundation

enum MPVNodeFormatName {
  static func name(for rawValue: Int32) -> String {
    switch rawValue {
    case 0: return "none"
    case 1: return "string"
    case 2: return "osd"
    case 3: return "flag"
    case 4: return "int64"
    case 5: return "double"
    case 6: return "node"
    case 7: return "node_array"
    case 8: return "node_map"
    case 9: return "byte_array"
    default: return "unsupported"
    }
  }
}
