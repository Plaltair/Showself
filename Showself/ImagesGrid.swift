//
//  ImagesGrid.swift
//  Showself
//
//  Created by Pierluca Lippi on 16/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//

import SwiftUI

struct ImagesGrid: View {
    
    @State var fullImage: Bool = false
    
    let images: [String]
    
    @State var imageSelected: String? = nil
    
    var body: some View {
        let rows = (images.count % 3 == 0 ? images.count / 3 : images.count / 3 + 1)
        
        return VStack(spacing: 0) {
            ForEach(0 ..< rows) { i in
                HStack(spacing: 0) {
                    ForEach(0 ..< 3) { j in
                        Button(action: {
                            self.imageSelected = self.images[j + i * 3]
                            self.fullImage.toggle()
                        }) {
                            self.check(i: i, j: j, columns: 3, count: self.images.count)
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFill()
                                .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
                                .clipped()
                        }
                        .sheet(isPresented: self.$fullImage) {
                            FullImage(image: self.imageSelected!)
                        }
                    }
                }
            }
        }
    }
    
    func check(i: Int, j: Int, columns: Int, count: Int) -> Image {
        if j + i * columns < count {
            return Image(self.images[j + i * columns])
        }
        
        else {
            return Image("")
        }
    }
}

struct ImagesGrid_Previews: PreviewProvider {
    static var previews: some View {
        ImagesGrid(images: ["image0", "image1", "image2", "image3"])
    }
}
