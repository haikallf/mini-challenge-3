//
//  InstructionsView.swift
//  G-Eco
//
//  Created by Haikal Lazuardi Fadil on 21/08/23.
//

import SwiftUI

struct InstructionsView: View {
    @State private var runAnimation: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 58) {
                //MARK: Heading Section
                VStack(spacing: 0) {
                    Text("You're Ready to")
                        .font(.system(size: 20))
                        .kerning(0.38)
                    
                    Text("Dispose!")
                        .font(.system(size: 34))
                        .kerning(0.38)
                        .fontWeight(.bold)
                }
                
                //MARK: Trash Animation
                ZStack {
                    Circle()
                        .fill(.white.opacity(0.2))
                        .frame(width: runAnimation ? 200 : 150)
                        .animation(Animation.linear(duration: 0.8).repeatForever(autoreverses: true))
                    
                    Circle()
                        .fill(.white.opacity(0.1))
                        .frame(width: runAnimation ? 250 : 200)
                        .animation(Animation.linear(duration: 0.8).repeatForever(autoreverses: true))
                    
                    Circle()
                        .fill(.white)
                        .frame(width: 150, height: 150)
                    
                    Image("box")
                }
                .onAppear {
                    self.runAnimation.toggle()
                }
                
                
                //MARK: Instruction Text
                Text("Gently place your e-waste inside the designated area.")
                    .font(.system(size: 17))
                    .multilineTextAlignment(.center)
                    .frame(width: 220, alignment: .top)
            }
            .foregroundColor(.white)
            
            //MARK: Continue Button
            NavigationButton(destination: PleaseWaitView(), text: "Done")
                .padding(.top, 40)
        }
    }
}

struct InstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionsView()
    }
}
