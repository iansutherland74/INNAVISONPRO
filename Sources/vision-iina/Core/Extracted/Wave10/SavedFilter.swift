//
//  SavedFilter.swift
//  iina
//
//  Created by Collider LI on 8/12/2017.
//  Copyright © 2017 lhc. All rights reserved.
//

import Foundation

fileprivate let ModifierMap: [Character: PortModifierFlags] = [
  "c": .control,
  "o": .option,
  "s": .shift,
  "m": .command
]

fileprivate let OrderedModifiers: [(Character, PortModifierFlags)] = [
  ("c", .control),
  ("o", .option),
  ("s", .shift),
  ("m", .command)
]


final class SavedFilter: @unchecked Sendable {

  var name: String
  var filterString: String
  var readableShortCutKey: String {
    get {
      return PortShortcutFormatter.readableString(fromKey: shortcutKey, modifiers: shortcutKeyModifiers)
    }
  }
  var isEnabled = false
  var shortcutKey: String
  var shortcutKeyModifiers: PortModifierFlags

  var debugDescription: String {
    Mirror(reflecting: self).children.map({"\($0.label!)=\($0.value)"}).joined(separator: ", ")
  }

  init(name: String, filterString: String, shortcutKey: String, modifiers: PortModifierFlags) {
    self.name = name
    self.filterString = filterString
    self.shortcutKey = shortcutKey
    self.shortcutKeyModifiers = modifiers
  }

  init?(dict: Any) {
    guard let dict = dict as? [String: String],
      let name = dict["name"],
      let filterString = dict["filterString"],
      let shortcutKey = dict["shortcutKey"],
      let shortcutKeyModifiers = dict["shortcutKeyModifiers"] else { return nil }
    self.name = name
    self.filterString = filterString
    self.shortcutKey = shortcutKey
    self.shortcutKeyModifiers = shortcutKeyModifiers.compactMap { ModifierMap[$0] }.reduce([]) { $0.union($1) }
  }

  func toDict() -> [String: String] {
    return [
      "name": name,
      "filterString": filterString,
      "shortcutKey": shortcutKey,
      "shortcutKeyModifiers": String(OrderedModifiers.compactMap { shortcutKeyModifiers.contains($0.1) ? $0.0 : nil })
    ]
  }
}
