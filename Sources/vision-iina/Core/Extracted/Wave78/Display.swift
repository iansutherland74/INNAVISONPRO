import Foundation

struct DisplaySnapshotCore: Equatable {
  let id: String
  let attributes: [String]

  var summary: String {
    attributes.isEmpty ? id : "\(id):\(attributes.joined(separator: ","))"
  }
}
