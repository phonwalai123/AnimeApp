//
//  InfoView.swift
//  ContactCard
//
//  Created by phonwalai on 3/6/2564 BE.
//

import SwiftUI

struct InfoView: View {
    let text:String
    let imageName:String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName:imageName).foregroundColor(Color(red: 0.20, green: 0.67, blue: 0.88))
                    Text(text)
                }
            ).padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text:"abc",imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
