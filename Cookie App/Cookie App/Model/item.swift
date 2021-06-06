//
//  item.swift
//  Cookie App
//
//  Created by phonwalai on 5/6/2564 BE.
//

import SwiftUI

struct Item: Identifiable{
    
    var id: String
    var item_name: String
    var item_cost: NSNumber
    var item_details: String
    var item_image: String
    var item_ratings: String
    
    //to identify whether it is added to cart
    var isAdded: Bool = false
}
