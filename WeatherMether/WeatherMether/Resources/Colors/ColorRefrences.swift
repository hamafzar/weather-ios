//
//  ColorRefrences.swift
//  WeatherMether
//
//  Created by Sadegh on 1/7/1399 AP.
//  Copyright © 1399 Sepitmaan. All rights reserved.
//

import SwiftUI
import UIKit

enum CustomColorName: String {
    case baseBackground                    = "baseBackground"
    case baseText                          = "baseTextColor"
    case shadowedViewLightShadow           = "lightShadow"
    case shadowedViewDarkShadow            = "darkShadow"
    case mainDetailView                    = "mainDetailView"
    case textFieldPlaceHolder              = "textFieldPlaceHolder"
    case textField                         = "textField"
    case lowerDegree                       = "lowerDegree"
    case splashBackground                  = "splashBackground"
}

extension CustomColorName {
    var getColor: Color {
        return Color(self.rawValue)
    }
}
