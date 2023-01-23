//
//  InfoView.swift
//  AndersonCard
//
//  Created by Anderson Sales on 18/01/23.
//

import SwiftUI

struct InfoView: View {
    
    let image: String
    let phone: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack{
                Image(systemName: image)
                    .foregroundColor(.green)
                Text(phone)
            })
            .padding()
    }
}

struct InfoView_Preview: PreviewProvider {
    static var previews: some View {
        InfoView(image: "phone.fill", phone: "Hello!")
            .previewLayout(.sizeThatFits)
    }
}
