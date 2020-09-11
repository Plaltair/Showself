//
//  SwiftUIView.swift
//  Showself
//
//  Created by Pierluca Lippi on 12/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//

import SwiftUI

struct Posts: View {
    
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    
    private let iconSize: CGFloat = 30
    private let paddingIcon: CGFloat = 20
    
    private let profileImageSize: CGFloat = 50
    
    private let cornerRadiusImage: CGFloat = 20
    
    @State private var fullImage: Bool = false;
    @State private var imageName: String = ""
    
    private let modelData: [PostModel] = [
        PostModel(name: "Pierluca Lippi", imageName: "image0"),
        PostModel(name: "Dario Lippi", imageName: "image1"),
        PostModel(name: "Sabrina D'Alessandro", imageName: "image2")
    ]

    var body: some View {
        List {
            Section(header: HeaderPost().padding([.leading, .trailing], -20)) {
                ForEach (modelData) { model in
                    VStack {
                        HStack {
                            Image("image3")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: self.profileImageSize, height: self.profileImageSize)
                            
                            Text(model.name)
                                .font(.headline)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(.leading)
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }) {
                                Image(self.colorScheme == .light ? "more_black" : "more")
                                    .renderingMode(.original)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20, alignment: .center)
                                    .padding()
                            }
                            
                        }
                        
                        Image(model.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5)
                            .clipped()
                            .padding([.leading, .trailing], -20)
                        
                        HStack {
                            
                            Button(action: {
                                
                            }) {
                                Image(systemName: "heart")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: self.iconSize, height: self.iconSize)
                            }
                            
                            Button(action: {
                                
                            }) {
                                Image(systemName: "bubble.left")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: self.iconSize, height: self.iconSize)
                                    .padding(.leading, self.paddingIcon)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }) {
                                Image(systemName: "eye")
                                .resizable()
                                .scaledToFit()
                                .frame(width: self.iconSize, height: self.iconSize)
                                .padding(.leading, self.paddingIcon)
                                .onTapGesture {
                                    self.imageName = model.imageName
                                    self.fullImage.toggle()
                                }
                            }
                        }
                        
                        HStack {
                            Text("134 mi piace totali")
                                .font(.body)
                                .fontWeight(.bold)
                            
                            Spacer()
                        }
                        .padding(.top)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.top)
                }
            }
        }
        .sheet(isPresented: self.$fullImage) {
            FullImage(image: self.imageName)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct Posts_Previews: PreviewProvider {
    static var previews: some View {
        Posts()
    }
}
