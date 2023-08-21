//
//  InstructionsView.swift
//  G-Eco
//
//  Created by Haikal Lazuardi Fadil on 21/08/23.
//

import SwiftUI

struct InstructionsView: View {
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
                Circle()
                    .fill(.white)
                    .frame(width: 150, height: 150)
                
                //MARK: Instruction Text
                Text("Gently place your e-waste inside the designated area.")
                    .font(.system(size: 17))
                    .multilineTextAlignment(.center)
                    .frame(width: 220, alignment: .top)
            }
            .foregroundColor(.white)
            
            //MARK: Continue Button
            CapsuleButton(label: "Done", onTap: {})
                .padding(.top, 40)
            
        }
    }
}

struct InstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionsView()
    }
}
