import Foundation

enum UtilityValidationResultState: Equatable {
  case ok
  case valueIsEmpty
  case valueAlreadyExists
  case custom(String)
}

enum UtilityValidationResultStateText {
  static func message(for state: UtilityValidationResultState) -> String? {
    switch state {
    case .ok:
      return nil
    case .valueIsEmpty:
      return "Value is empty."
    case .valueAlreadyExists:
      return "Value already exists."
    case .custom(let message):
      return message
    }
  }
}