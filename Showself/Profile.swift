//
//  Profile.swift
//  Showself
//
//  Created by Pierluca Lippi on 16/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//

import SwiftUI

struct Profile: View {
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    
    private let images: [String] = ["image0", "image1", "image2", "image3", "image0", "image1", "image2", "image3", "image0", "image1", "image2", "image3", "image0", "image1", "image2", "image3", "image0", "image1"]
    
    var body: some View {
            VStack(spacing: 0) {
                
                ZStack {
                    
                    Text("Pierluca Lippi")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(colorScheme == .light ? Color.black : Color.white)
                        
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Image(colorScheme == .light ? "settings_black" : "settings")
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25, alignment: .center)
                                .padding(.trailing)
                        }
                    }
                }
                .padding(.bottom)
                .background(colorScheme == .light ? Color.white : Color.black)
                
                ScrollView(.vertical) {
                    LinearGradient(gradient: Gradient(colors: [firstColor, secondColor]), startPoint: .leading, endPoint: .trailing)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3.5)
                    
                    HStack {
                        VStack {
                            Image("image3")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                                .offset(y: -50)
                            
                            Text("Pierluca Lippi")
                                .font(.headline)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .offset(y: -50)
                            
                        }
                        
                        Spacer()
                        
                        HStack {
                            VStack {
                                Text("1.2k")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Mi piace")
                                    .font(.subheadline)
                                    
                            }
                            .padding(.trailing, 50)
                            
                            VStack {
                                Text("465")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Foto")
                                    .font(.subheadline)
                            }
                        }
                        .offset(y: -25)
                        
                        Spacer()
                    }
                    .padding(.leading)
                    
                    ImagesGrid(images: images)
                    
                    Spacer()
                }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
