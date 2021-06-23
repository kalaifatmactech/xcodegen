//
//  ElementsIdentifiable.swift
//  OZStudioTest
//
//  Created by Vijay FMT G on 23/06/21.
//

import SwiftUI
import Foundation
struct  Elements: Identifiable{
    var id = UUID().uuidString
    let refId: String
    let element: AnyView
    var styles: [String: Any]
}
