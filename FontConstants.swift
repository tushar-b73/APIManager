//
//  FontConstants.swift

//
//  Created by Tushar on 05/03/21.
//

import Foundation
import UIKit

//In This Class We Define The All Fontns that used in App,and access font name and size

enum FontName: String {
    case OpenSansRegular         = "OpenSans-Regular"
    case OpenSansItalic          = "OpenSans-Italic"
    case OpenSansLight           = "OpenSans-Light"
    case OpenSansLightItalic     = "OpenSans-LightItalic"
    case OpenSansSemiBold        = "OpenSans-SemiBold"
    case OpenSansSemiBoldItalic  = "OpenSans-SemiBoldItalic"
    case OpenSansBold            = "OpenSans-Bold"
    case OpenSansBoldItalic      = "OpenSans-BoldItalic"
    case OpenSansExtraBold       = "OpenSans-ExtraBold"
    case OpenSansExtraBoldItalic = "OpenSans-ExtraBoldItalic"
    
}
enum StandardSize: Double {
    case buttonTitle   = 19.0
    case textFieldText = 18.0
    case HeaderTitle   = 16.0
    case labelLarge    = 23.0
    case labelMid      = 15.0
    case LableSmall    = 12.0
}
