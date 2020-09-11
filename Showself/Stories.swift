//
//  Stories.swift
//  Showself
//
//  Created by Pierluca Lippi on 11/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//

import SwiftUI

struct Stories: View {
    
    @Environment(\.colorScheme) private var colorScheme: ColorScheme
    
    @State private var reactionOpacity: Double = 0.0
    @State private var angle: Double = 0.0
    
    @State private var rightArrowOpacity: Double = 0.0
    @State private var leftArrowOpacity: Double = 0.0
    
    @State private var reactionName: String = "like"

    @State private var dislikedPressed: Bool = false
    @State private var likePressed: Bool = false
    
    @State private var showingDetail: Bool = false
    @State private var fullImage: Bool = false
    
    private let images: [String] = ["image0", "image1", "image2", "image3"]
    @State private var index = 0
    
    var body: some View {
        ZStack {
                        
            Image(self.images[self.index])
            .renderingMode(.original)
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width)
            
            HStack(spacing: 0) {
                Color.clear
                    .frame(maxWidth: UIScreen.main.bounds.width / 2.5, minHeight: 0, maxHeight: .infinity)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        self.prev()
                    }
                
                Spacer()
                
                Color.clear
                    .frame(maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        self.next()
                    }
            }
            
            HStack {
                
                Image("prev")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60, alignment: .center)
                .shadow(radius: 20)
                .opacity(self.leftArrowOpacity)
                .padding()
                
                Spacer()
                
                Image("next")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60, alignment: .center)
                .shadow(radius: 20)
                .opacity(self.rightArrowOpacity)
                .padding()
            }
            
            VStack {
                HStack {
                    Button(action: {
                        
                    }) {
                        Image("search")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25, alignment: .center)
                            .padding()
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        self.showingDetail.toggle()
                    }) {
                        Image("more")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25, alignment: .center)
                            .padding()
                    }
                    .sheet(isPresented: self.$showingDetail) {
                        ModalStory()
                    }
                }
                
                Spacer()
                
                HStack {
                    Button(action: {
                        self.fullImage.toggle()
                    }) {
                        Image("visualize")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50, alignment: .center)
                            .padding()
                    }
                    .sheet(isPresented: self.$fullImage) {
                        FullImage(image: self.images[self.index])
                    }
                    
                    Spacer()
                }
            }
            
            VStack {
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Button(action: {
                            if !self.likePressed {
                                self.likePressed = true
                                self.dislikedPressed = false
                                self.reactionName = "like"
                                self.reactionOpacity = 1
                                let random = Double.random(in: -60 ... 60)
                                self.angle = random
                                withAnimation(.linear(duration: 2)) {
                                    self.reactionOpacity = 0
                                }
                            }
                        }) {
                            Image("like")
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50, alignment: .center)
                                .padding()
                        }
                            
                        Button(action: {
                            if !self.dislikedPressed {
                                self.dislikedPressed = true
                                self.likePressed = false
                                self.reactionName = "dislike"
                                self.reactionOpacity = 1
                                let random = Double.random(in: -60 ... 60)
                                self.angle = random
                                withAnimation(.linear(duration: 2)) {
                                    self.reactionOpacity = 0
                                }
                            }
                        }) {
                            Image("dislike")
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50, alignment: .center)
                                .padding()
                        }
                    }
                }
            }
            
            Image(self.reactionName)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120, alignment: .center)
                .opacity(self.reactionOpacity)
                .rotationEffect(Angle(degrees: self.angle))
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    private func next() {
        if self.index + 1 < self.images.count {
            self.index = self.index + 1
            self.dislikedPressed = false
            self.likePressed = false
            
            self.rightArrowOpacity = 1
            
            withAnimation(.linear(duration: 0.5)) {
                self.rightArrowOpacity = 0
            }
        }
    }
    
    private func prev() {
        if self.index - 1 >= 0 {
            self.index = self.index - 1
            self.dislikedPressed = false
            self.likePressed = false
            
            self.leftArrowOpacity = 1
                
            withAnimation(.linear(duration: 0.5)) {
                self.leftArrowOpacity = 0
            }
        }
    }
}

private struct StorySlider {
    
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
    }
}
