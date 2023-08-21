//
//  CapsuleButton.swift
//  G-Eco
//
//  Created by Haikal Lazuardi Fadil on 21/08/23.
//

import SwiftUI

struct CapsuleButton: View {
    let label: String
    let onTap: () -> Void
    
    var body: some View {
        Button(action: {
            onTap()
        }, label: {
            Text(label)
                .padding(.vertical, 12)
                .frame(maxWidth: 324)
                .background(Color("secondaryBlue"))
                .foregroundColor(.white)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .clipShape(Capsule())
        })
    }
}

struct CapsuleButton_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleButton(label: "Done", onTap: {})
    }
}
