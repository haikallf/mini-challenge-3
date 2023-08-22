//
//  WelcomeView.swift
//  G-Eco
//
//  Created by Haikal Lazuardi Fadil on 21/08/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            //MARK: Top Right Shape
            Rectangle()
                .foregroundColor(Color("primaryBlue"))
                .frame(width: 636.29663, height: 511.36307)
                .cornerRadius(636.29663)
                .rotationEffect(Angle(degrees: -16.33))
                .offset(CGSize(width: 300, height: -500))
            
            //MARK: Bottom Left Shape
            Rectangle()
                .foregroundColor(Color("primaryBlue"))
                .frame(width: 636.29663, height: 511.36307)
                .cornerRadius(636.29663)
                .rotationEffect(Angle(degrees: -16.33))
                .offset(CGSize(width: -150, height: 200))

            //MARK: Main Section
            VStack(spacing: 34) {
                Image("splash")
                
                Text("G-_Eco_!")
                    .font(.system(size: 64))
                    .fontWeight(.bold)
                
                Text("Effortlessly contribute your **electronic waste** recycling")
                    .font(.system(size: 17))
                    .multilineTextAlignment(.center)
                    .frame(width: 270)
            }
            .foregroundColor(.white)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
