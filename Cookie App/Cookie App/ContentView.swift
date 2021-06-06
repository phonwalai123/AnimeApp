//
//  ContentView.swift
//  Cookie App
//
//  Created by phonwalai on 4/6/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            Home()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
