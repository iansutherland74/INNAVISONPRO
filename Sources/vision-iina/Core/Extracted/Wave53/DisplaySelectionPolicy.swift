import Foundation

enum DisplaySelectionPolicy {
  static func preferredDisplay(main: String?, builtin: String?, fallback: String?) -> String? {
    main ?? builtin ?? fallback
  }
}
