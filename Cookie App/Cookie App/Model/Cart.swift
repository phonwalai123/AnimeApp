//
//  Cart.swift
//  Cookie App
//
//  Created by phonwalai on 5/6/2564 BE.
//

import SwiftUI

struct Cart: Identifiable {
    var id = UUID().uuidString
    var item: Item
    var quantity: Int
}

