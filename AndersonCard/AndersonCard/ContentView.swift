//
//  ContentView.swift
//  AndersonCard
//
//  Created by Anderson Sales on 18/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.20, green: 0.60, blue: 0.86, alpha: 1.00)).edgesIgnoringSafeArea(.all)
            VStack {
                Image("anderson")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Anderson Sales")
                    .font(.system(size: 36))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                InfoView(image: "phone.fill", phone: "+55 12 99206 4867")
                InfoView(image: "envelope.fill", phone: "aasalesdev@gmail.com")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
