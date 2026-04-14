//
//  Regex.swift
//  iina
//
//  Created by lhc on 12/1/2017.
//  Copyright © 2017 lhc. All rights reserved.
//

import Foundation

final class Regex: @unchecked Sendable {

  static let aspect = Regex("\\A\\d+(\\.\\d+)?:\\d+(\\.\\d+)?\\Z")
  static let httpFileName = Regex("attachment; filename=(.+?)\\Z")
  static let url = Regex("^(([^:\\/?#]+):)(\\/\\/([^/?#]*))?([^?#]*)(\\?([^#]*))?(#(.*))?")
  static let filePath = Regex("^(/[^/]+)+$")
  static let geometry = Regex("^((\\d+%?)?(x(\\d+%?))?)?((\\+|\\-)(\\d+%?)(\\+|\\-)(\\d+%?))?$")
  static let numbers = Regex("^[0-9]+(\\.[0-9]+)?$")

  private let regex: NSRegularExpression

  init (_ pattern: String) {
    self.regex = try! NSRegularExpression(pattern: pattern, options: [])
  }

  func matches(_ str: String) -> Bool {
    return regex.numberOfMatches(in: str, options: [], range: NSMakeRange(0, str.count)) > 0
  }

  func captures(in str: String) -> [String] {
    var result: [String] = []
    if let match = regex.firstMatch(in: str, options: [], range: NSMakeRange(0, str.count)) {
      for i in 0..<match.numberOfRanges {
        let range = match.range(at: i)
        if range.length > 0 {
          result.append((str as NSString).substring(with: match.range(at: i)))
        } else {
          result.append("")
        }
      }
    }
    return result
  }
}
