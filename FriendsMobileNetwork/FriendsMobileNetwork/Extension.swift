//
//  Extension.swift
//  FriendsMobileNetwork
//
//  Created by admin on 13/12/17.
//  Copyright © 2017 ACME iOS TEAM. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import QuartzCore









//MARK : - UIColor Extension
extension UIColor {
    static var keyboardColor:UIColor {
        return UIColor(red: 26.0 / 255.0, green: 26.0 / 255.0, blue: 25.0 / 255.0, alpha: 1.0)
    }
    class  func colorWithHexString (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: (CharacterSet.whitespaces as NSCharacterSet) as CharacterSet).uppercased()//stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet() as NSCharacterSet).uppercaseString
        let index1 = cString.index(cString.startIndex, offsetBy: +1)
        if (cString.hasPrefix("#")) {
            cString = cString.substring(from: index1)//substringFromIndex(cString.startIndex.advancedBy(1))
        }
        //        var index1 = string1.index(string1.endIndex, offsetBy: -4)
        //
        //        var substring1 = string1.substring(to: index1)
        
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
