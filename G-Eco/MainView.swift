//
//  MainView.swift
//  G-Eco
//
//  Created by Haikal Lazuardi Fadil on 21/08/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            //MARK: Background
            LinearGradient(colors: [Color("primaryBackground"), Color("secondaryBackground")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
//                WelcomeView()
//                InstructionsView()
//                PleaseWaitView()
                SummaryView()
            }
            .padding()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
