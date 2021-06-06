//
//  ItemView.swift
//  Cookie App
//
//  Created by phonwalai on 5/6/2564 BE.
//

import SwiftUI
import SDWebImageSwiftUI

struct ItemView: View {
    var item: Item
    var body: some View {
        
        VStack{
            //downloading image from web
            
            WebImage(url: URL(string: item.item_image))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width - 30,height: 250)
            
            HStack(spacing: 8){
                
                Text(item.item_name)
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
                //Ratings View
                
                ForEach(1...5,id: \.self){index in
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(index <= Int(item.item_ratings) ?? 0 ?
                                            Color.blue : .gray)
                    
                }
            }
            
            HStack{
                Text(item.item_details)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                
                Spacer(minLength: 0)
            }
        }
    }
}

