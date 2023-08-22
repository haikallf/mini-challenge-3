//
//  ContentView.swift
//  G-Eco Clips
//
//  Created by Haikal Lazuardi Fadil on 21/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            MainView()
        }
        .colorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
