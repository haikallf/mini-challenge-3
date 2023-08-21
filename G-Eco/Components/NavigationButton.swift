//
//  NavigationButton.swift
//  G-Eco
//
//  Created by Haikal Lazuardi on 22/08/23.
//

import SwiftUI

struct NavigationButton<Destination: View>: View {
    let destination: Destination
    let text: String
    var isBordered: Bool = false
    
    var body: some View {
        if (isBordered) {
            NavigationLink(destination: destination) {
                Text(text)
                    .padding(.vertical, 12)
                    .frame(maxWidth: .infinity)
                    .background(Color("secondaryBlue").opacity(0))
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 1)
                    )
            }
        } else {
            NavigationLink(destination: destination) {
                Text(text)
                    .padding(.vertical, 12)
                    .frame(maxWidth: 324)
                    .background(Color("secondaryBlue"))
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .clipShape(Capsule())
            }
        }
    }
}

struct NavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButton(destination: EmptyView(), text: "Done")
    }
}
