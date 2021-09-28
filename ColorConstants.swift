//
//  ColorConstatns.swift
//  Created by Tushar on 04/03/21.
//

//This file is for to manage Colors in Whole App

import Foundation
import UIKit

private struct Alphas {
    static let Opaque = CGFloat(1)
    static let SemiOpaque = CGFloat(0.8)
    static let SemiTransparent = CGFloat(0.5)
    static let Transparent = CGFloat(0.3)
}


struct AppThemeColor {
    static let textGreen = UIColor(red: 39/255.0, green: 110/255.0, blue: 176/255.0, alpha: 1)
    static let textBlack = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1)
    static let textWhite = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1)
    static let colorPrimaryDark = UIColor(red: 211.0/255.0, green: 211.0/255.0, blue: 211.0/255.0, alpha:1)
    static let textFieldBorder = UIColor(red: 206/255.0, green: 206/255.0, blue: 206/255.0, alpha: Alphas.Opaque)
    static let redWarning = UIColor(red: 251/255.0, green: 0/255.0, blue: 7/255.0, alpha:1)
    static let blurViewBG = UIColor(red: 235/255.0, green: 235/255.0, blue: 235/255.0, alpha:1)
    static let greenSelection = UIColor(red: 218/255.0, green: 241/255.0, blue: 232/255.0, alpha:1)
   

}
struct appBorderColor {
    static let borderGreen = UIColor(red: 23/255.0, green: 111/255.0, blue: 183/255.0, alpha: 1)
    static let borderRed = UIColor(red: 255.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static let borderYellow = UIColor(red: 41.0/255.0, green: 56.0/255.0, blue: 61.0/255.0, alpha: 1.0)
    static let borderGray = UIColor(red: 230.0/255.0, green: 230.0/255.0, blue: 230.0/255.0, alpha: 1.0)
    
//    static let borderYellow = UIColor(red: 242.0/255.0, green: 130.0/255.0, blue: 15.0/255.0, alpha: 1)
   // static let borderYellow = UIColor(red: 0.94, green: 0.50, blue: 17, alpha: 1).cgColor
    
}

