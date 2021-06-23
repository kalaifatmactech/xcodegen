//
//  ElementsIdentifiable.swift
//  OZStudioTest
//
//  Created by Vijay FMT G on 23/06/21.
//

func hexStringToUIColor (hex:String) -> Color {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return Color(UIColor.gray)
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return Color(UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0))
    )
}

import SwiftUI
import Foundation



struct  Elements: Identifiable{
    
    var id = UUID()
    var title: String
    var src: String
    var parentDivId: String
    var text: String
    var placeholder: String
    var clickevent: String
    var classname: String
    var style: String!
    var action: String!
    var props: ComponentProps
}
struct ComponentProps {
    var styles: ComponentStyles
}
struct ComponentStyles {
    var width: Int
    var height: Int
    var level: String
    var alignment: String
    var color: String
    var backgroundColor: String
    var uppercase: Bool
    var inputType: String
    var isEditbale: Bool
    var isChecked: Bool
    var font: Font
    var padding: Padding
    var margin: Margin
    
}

struct Font{
    var family: String
    var size: Int
}
struct Padding {
    var top: Int
    var bottom: Int
    var left: Int
    var right: Int
}
struct Margin {
    var top: Int
    var bottom: Int
    var left: Int
    var right: Int
}
