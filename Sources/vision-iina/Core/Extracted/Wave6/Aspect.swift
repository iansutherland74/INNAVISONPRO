//
//  Aspect.swift
//  iina
//
//  Created by lhc on 2/9/16.
//  Copyright © 2016 lhc. All rights reserved.
//

import Foundation
import CoreGraphics

final class Aspect: @unchecked Sendable {

  private var size: CGSize!

  var width: CGFloat {
    get {
      return size.width
    }
    set {
      size.width = newValue
    }
  }

  var height: CGFloat {
    get {
      return size.height
    }
    set {
      size.height = newValue
    }
  }

  var value: CGFloat {
    get {
      return size.width / size.height
    }
  }

  init(size: CGSize) {
    self.size = size
  }

  init?(string: String) {
    if Regex.aspect.matches(string) {
      let wh = string.components(separatedBy: ":")
      if let cropW = Float(wh[0]), let cropH = Float(wh[1]) {
        self.size = CGSize(width: CGFloat(cropW), height: CGFloat(cropH))
      }
    } else {
      return nil
    }
  }

}
