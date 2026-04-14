import Foundation

extension Double {
    /// Returns a clean decimal string: drops the `.0` suffix for whole numbers,
    /// rounds to 3 decimal places otherwise. Mirrors iina's `Extensions.swift` implementation.
    func prettyFormat() -> String {
        let rounded = (self * 1000).rounded() / 1000
        if rounded.truncatingRemainder(dividingBy: 1) == 0 {
            return "\(Int(rounded))"
        } else {
            return "\(rounded)"
        }
    }
}
