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
    var body: some View {
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

struct NavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButton(destination: EmptyView(), text: "Done")
    }
}
