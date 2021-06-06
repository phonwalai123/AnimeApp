//
//  ContentView.swift
//  BMI
//
//  Created by phonwalai on 2/6/2564 BE.
//

import SwiftUI

struct ContentView: View {
    @State var resultText:String = "BMI Calculator"
    @State var weight:String = ""
    @State var height:String = ""
    
    var body: some View {
        VStack {
            
            Text(resultText).font(.largeTitle)
                .padding()
            HStack {
                Text("น้ำหนัก")
                TextField("กิโลกรัม", text: $weight).keyboardType(.numberPad)
            }.padding()
            
            HStack {
                Text("ส่วนสูง")
                TextField("เซนติเมตร", text: $height).keyboardType(.numberPad)
            }.padding()
            Button(action: {
                let result = Double(self.weight)!/pow(Double(self.height)!/100.0,2)
                self.resultText = String(result)
            }) {
                Text("เริ่มคำนวณ")
            }.padding()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
