import Foundation

enum LegacyMigrationCore {
  static func isUnmigrated(modernKey: String, legacyKey: String, persisted: Set<String>) -> Bool {
    LegacyPreferenceMigrationPlan.unmigrated(modernKey: modernKey, legacyKey: legacyKey, persisted: persisted)
  }
}
