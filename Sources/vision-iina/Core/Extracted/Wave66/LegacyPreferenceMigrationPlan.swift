import Foundation

enum LegacyPreferenceMigrationPlan {
  static func unmigrated(modernKey: String, legacyKey: String, persisted: Set<String>) -> Bool {
    persisted.contains(legacyKey) && !persisted.contains(modernKey)
  }
}
