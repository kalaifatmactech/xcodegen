//
//  Utils.swift
//  Template
//
//  Created by Vijay FMT G on 24/06/21.
//

import Foundation
import SwiftUI

func getBackgroundColor(backgroundColor: String)->Color {
    if(backgroundColor == "") {
        return Color.white
    }
    else {
        let color: Color = hexStringToUIColor(hex: backgroundColor)
        return color
    }
    
}
func getForegroundColor(color: String)->Color {
   
    if(color == "") {
        return Color.blue
    }
    else {
        let color: Color = hexStringToUIColor(hex: color)
        return color
    }
    
}

func getPosition(position: Position, width: CGFloat, height: CGFloat)-> [CGFloat] {
    
    if(position.left != 0.0 && position.top != 0.0) {
        return [position.left, position.top]
    }
    else {
        return [0.0,0.0]
    }
    
}

