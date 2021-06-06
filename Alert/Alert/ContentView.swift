//
//  ContentView.swift
//  Alert
//
//  Created by phonwalai on 3/6/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var mTextField = ""
    @State var showingAlert = false
    
    var body: some View {
        VStack {
            Image("catwall")
                .resizable()
                .scaledToFit()
                .padding(.bottom,40)
            
            TextField("Tell me" ,text : $mTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal,45)
            
            Button(action: {
                self.showingAlert = true
            }){
                Text("Submit")
            }.padding(.all)
            
                .alert(isPresented: $showingAlert) { () -> Alert in
                    Alert(title: Text("Result"),
                          message: Text(self.mTextField),
                          dismissButton: .default(Text("Close")))
            }

        }.padding(.all,40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
