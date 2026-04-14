import Foundation

enum FirstRunManagerCore {
  static func isFirstRun(store: FirstRunMarkerStore, key: String) -> Bool {
    store.isFirstRun(for: .init(key))
  }
}
