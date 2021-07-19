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

struct ComponentArray : Identifiable {
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
    var childs: [ComponentArray]!
    var navContents: [ComponentArray]!
    var radiogroup: [ComponentArray]!
    
    
}
struct ComponentProps : Identifiable{
    var id = UUID()
    var styles: ComponentStyles
    var data: ComponentData
}

struct ComponentData : Identifiable{
    var id = UUID()
    var type: String
    var typeDetails: DataTypeDetails
    var data: [ComponentDataArray]
}

struct DataTypeDetails : Identifiable{
    var id = UUID()
    var sheetName: String
    var colunmName: String
    var idColumnName: String
    var apiName: String
    var apiKey: String
    var apiIdKey: String
}

struct ComponentDataArray : Identifiable{
    var id = UUID()
    var key: String
    var value: String
}

struct Font: Identifiable {
    
    var id = UUID()
    var family: String
    var size: Int
}
struct Padding : Identifiable{
    var id = UUID()
    var top: Int
    var bottom: Int
    var left: Int
    var right: Int
}
struct Margin : Identifiable{
    var id = UUID()
    var top: Int
    var bottom: Int
    var left: Int
    var right: Int
}
struct Position: Codable {
    var top: CGFloat
    var bottom: CGFloat
    var left: CGFloat
    var right: CGFloat
}
struct ComponentStyles : Identifiable{
    var id = UUID()
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
    var position: Position
    var font: Font
    var padding: Padding
    var margin: Margin
}
