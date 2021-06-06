//
//  Menu.swift
//  Cookie App
//
//  Created by phonwalai on 4/6/2564 BE.
//

import SwiftUI

struct Menu: View {
    @ObservedObject var homeData : HomeViewModel
    var body: some View {
        VStack{
            
            NavigationLink(destination: CartView(homeData: homeData)){
                
                HStack(spacing: 15){
                    Image(systemName: "cart")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.blue)
                    
                    Text("Cart")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.blue)
                    
                    Spacer(minLength: 0)
                }
                .padding()
            }
            
            Spacer()
            HStack{
                Spacer()
                Text("Phonwalai")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .padding(10)
        }
        .padding([.top,.trailing])
        .frame(width: UIScreen.main.bounds.width/1.6)
        .background(Color.white.ignoresSafeArea())
    }
}

