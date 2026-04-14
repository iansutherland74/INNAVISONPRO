import Foundation

enum DisplayRefreshRateFormatter {
  private static let formatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.maximumFractionDigits = 3
    formatter.numberStyle = .decimal
    formatter.roundingMode = .down
    return formatter
  }()

  /// Formats a display refresh rate using up to 3 fractional digits and a Hz suffix.
  static func string(for rate: Double) -> String {
    let number = NSNumber(value: rate)
    let value = formatter.string(from: number) ?? String(format: "%.3f", rate)
    return value + " Hz"
  }
}
