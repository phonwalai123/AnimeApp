//
//  ContentView.swift
//  ContactCard
//
//  Created by phonwalai on 3/6/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.67, blue: 0.88, opacity: 1.00)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("noey")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 350)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white,lineWidth: 5))
                Text("Phonwalai Phuchomsri")
                    .font(.custom("NotoSansJP-Medium", size: 30))
                    .foregroundColor(.white)
                Text("ios Developer").font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+66 985 836 614", imageName: "phone.fill")
                InfoView(text: "phonwalai123@gmail.com", imageName: "envelope.fill")
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


