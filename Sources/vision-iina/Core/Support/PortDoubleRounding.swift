import Foundation

extension Double {
    /// Matches IINA's half-down rounding behavior used for time display.
    func roundedHalfDown() -> Double {
        let floorValue = floor(self)
        return self <= floorValue + 0.5 ? floorValue : ceil(self)
    }
}
