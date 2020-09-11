//
//  Album.swift
//  Showself
//
//  Created by Pierluca Lippi on 16/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//

import SwiftUI

struct Album: View {
    private let images: [String] = ["image0", "image1", "image2", "image3", "image0"]
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Foto recenti")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading)
                Spacer()
            }
            
            ScrollView(.horizontal) {
                HStack(spacing: 0) {
                    ForEach(0 ..< self.images.count) { index in
                        Image(self.images[index])
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width / 4, height: UIScreen.main.bounds.width / 4)
                            .cornerRadius(15)
                            .clipped()
                            .padding(.leading)
                    }
                }
            }
        }
    }
}

struct Album_Previews: PreviewProvider {
    static var previews: some View {
        Album()
    }
}
