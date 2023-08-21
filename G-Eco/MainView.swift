//
//  MainView.swift
//  G-Eco
//
//  Created by Haikal Lazuardi Fadil on 21/08/23.
//

import SwiftUI

struct MainView: View {
    @State private var isActive: Bool = false
    @State private var opacity: Double = 0
    
    var body: some View {
        ZStack {
            //MARK: Background
            LinearGradient(colors: [Color("primaryBackground"), Color("secondaryBackground")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                if (isActive) {
                    InstructionsView()
                } else {
                    WelcomeView()
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.2)) {
                                self.opacity = 1
                            }
                        }
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                                withAnimation {
                                    self.isActive = true
                                }
                                
                            }
                        }
                }
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
