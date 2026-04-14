import Foundation

enum DisplayControllerCore {
  static func activeDisplay(main: DisplaySnapshotCore?, fallback: DisplaySnapshotCore?) -> DisplaySnapshotCore? {
    main ?? fallback
  }
}
