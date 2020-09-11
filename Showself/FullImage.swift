//
//  FullImage.swift
//  Showself
//
//  Created by Pierluca Lippi on 14/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//

import SwiftUI

struct FullImage: View {
    
    @Environment(\.presentationMode) private var presentation
    
    @GestureState var magnifyBy = CGFloat(1.0)
    
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .pinchToZoom()
    }
}

struct FullImage_Previews: PreviewProvider {
    static var previews: some View {
        FullImage(image: "image0")
    }
}
