//
//  ModalStory.swift
//  Showself
//
//  Created by Pierluca Lippi on 12/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//
import SwiftUI

struct ModalStory: View {
    
    @Environment(\.presentationMode) private var presentation
    
    @State private var comment: String = ""
    
    private var name: String = "Pierluca Lippi"

    var body: some View {
        NavigationView {
        VStack {
            Spacer()
            
            Text("author")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            Image("image3")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
                .padding()
                
            Text(name)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("reportImage")
                    .font(.headline)
                    .foregroundColor(firstColor)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            
            
            Button(action: {
                self.presentation.wrappedValue.dismiss()
            }) {
                Text("goBack")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
        }
    }
}

struct ModalStory_Previews: PreviewProvider {
    static var previews: some View {
        ModalStory()
    }
}
