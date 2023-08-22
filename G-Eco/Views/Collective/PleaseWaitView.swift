//
//  PleaseWaitView.swift
//  G-Eco
//
//  Created by Haikal Lazuardi Fadil on 21/08/23.
//

import SwiftUI

struct PleaseWaitView: View {
    @State var currentIndex: Int = 0
    @State var posts: [AppFeature] = AppFeature.all
    
    @State private var isLoading = false
    
    @State var currectTab = "Slide Show"
    @Namespace var animation
    
    @State private var isActive: Bool = false
    
    var body: some View {
        Group {
            if (isActive) {
                SummaryView()
            } else {
                ZStack {
                    Color.white
                        .ignoresSafeArea()
                    
                    VStack {
                        Image("ellipse")
                            .resizable()
                            .frame(width: 394)
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                        
                        Spacer()
                    }
                   
                    VStack(spacing: 0){
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
                        .padding(.top, 63)
                        .foregroundColor(.white)
                        
                        //MARK: Loading Spinner
                        Circle()
                            .stroke(AngularGradient(colors: [Color.white, Color.white.opacity(0)], center: .center, startAngle: .degrees(45), endAngle: .degrees(450)), lineWidth: 8)
                            .frame(width: 48, height: 48)
                            .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                            .padding(.top, 48)
                            .onAppear() {
                                DispatchQueue.main.async {
                                    withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                                        self.isLoading = true
                                    }
                                }
                            }
                        
                        //MARK: Carousel Section
                        Text("Check out our **full app** for full experiences!")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("secondaryBlue"))
                            .padding(.top, 72)
                            .padding(.bottom, 19)
                        
                        SnapCarousel(index: $currentIndex, items: posts) { post  in
                            GeometryReader{proxy in
                                Image(post.filename)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 270, height: 250)
                                    .shadow(radius: 4)
                            }
                        }
                        .frame(height: 270)
                    
                        //MARK: Dot Indicator
                        HStack(spacing: 10){
                            ForEach(posts.indices, id: \.self){index in
                                Circle()
                                    .fill(currentIndex == index ? Color("gray") : Color("lightGray"))
                                    .frame(width: 9, height: 9)
                                    .animation(.spring(), value: currentIndex == index)
                            }
                        }
                        
                        //MARK: Footer Section
                        HStack {
                            Image("ewaste")
                            Image("appStore")
                        }
                        .padding(.top, 29)
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct PleaseWaitView_Previews: PreviewProvider {
    static var previews: some View {
        PleaseWaitView()
    }
}
