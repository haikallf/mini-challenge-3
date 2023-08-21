//
//  SummaryView.swift
//  G-Eco
//
//  Created by Haikal Lazuardi on 22/08/23.
//

import SwiftUI

struct SummaryView: View {
    var body: some View {
        VStack {
            VStack(spacing: 40) {
                //MARK: Heading Section
                VStack(spacing: 0) {
                    Text("Congratulations!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("E-Waste Collected")
                        .font(.title3)
                }
                .foregroundColor(.white)
                
                //MARK: Badge Section
                VStack {
                    Text("You have submitted")
                    
                    Image("badge")
                    
                    Text("of **electronic waste**!")
                }
                .foregroundColor(.white)
                
                //MARK: Description
                Text("You’ve helped G-Eco raise a total of **IDR 15,000,000** for charity through Apple Foundation.")
                    .padding(.vertical)
                    .padding(.horizontal, 33)
                    .multilineTextAlignment(.center)
                    .background(.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 17)
                    .foregroundColor(Color("secondaryBlue"))
            }
            
            //MARK: Footer Section
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Done")
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
                })
                
                Image(systemName: "square.and.arrow.up")
                    .font(.title)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 17)
            .padding(.top, 45)
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
