//
//  UIColor+Helper.swift
//  HexColorTyping
//
//  Created by Nathan Ansel on 12/12/15.
//  Copyright © 2015 Nathan Ansel. All rights reserved.
//

import UIKit

extension UIColor {
  convenience init(hex: String, alpha: CGFloat = 1) {
    let scanner = NSScanner(string: hex)
    if hex[hex.startIndex] == "#" {
      scanner.scanLocation = 1
    }
    
    var rgb: UInt32 = 0
    scanner.scanHexInt(&rgb)
    
    self.init(
      red:   CGFloat((rgb & 0xFF0000) >> 16)/255.0,
      green: CGFloat((rgb &   0xFF00) >>  8)/255.0,
      blue:  CGFloat((rgb &     0xFF)      )/255.0,
      alpha: alpha)
  }
}