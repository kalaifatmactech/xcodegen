//
//  Utils.swift
//  Template
//
//  Created by Vijay FMT G on 24/06/21.
//

import Foundation
import SwiftUI

func getBackgroundColor(element: ComponentArray)->Color {
    let styles: ComponentStyles = element.props.styles
    if(styles.backgroundColor == "") {
        return Color.white
    }
    else {
        let color: Color = hexStringToUIColor(hex: styles.backgroundColor)
        return color
    }
    
}
func getForegroundColor(element: ComponentArray)->Color {
    let styles: ComponentStyles = element.props.styles
    if(styles.color == "") {
        return Color.white
    }
    else {
        let color: Color = hexStringToUIColor(hex: styles.color)
        return color
    }
    
}
