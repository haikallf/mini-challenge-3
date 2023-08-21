//
//  PleaseWaitView.swift
//  G-Eco
//
//  Created by Haikal Lazuardi Fadil on 21/08/23.
//

import SwiftUI

struct PleaseWaitView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("primaryBlue"))
                .frame(width: 636.29663, height: 511.36307)
                .cornerRadius(636.29663)
                .rotationEffect(Angle(degrees: -16.33))
                .offset(CGSize(width: 100, height: -340))

            VStack {
                //MARK: Heading Section
                VStack(spacing: 16) {
                    Text("Please wait...")
                        .font(.system(size: 34))
                        .kerning(0.374)
                        .fontWeight(.bold)
                    
                    Text("We still processing your e-waste")
                        .font(.system(size: 17))
                        .kerning(0.374)
                }
                
                //MARK: Loading Spinner
                Circle()
                    .fill(.white)
                    .frame(width: 60, height: 60)
                
                //MARK: TabView Section
                Text("Check out our **full app** for full experiences!")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("secondaryBlue"))
            }
        }
    }
}

struct PleaseWaitView_Previews: PreviewProvider {
    static var previews: some View {
        PleaseWaitView()
    }
}
