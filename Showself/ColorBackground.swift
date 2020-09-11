//
//  ColorBackground.swift
//  Showself
//
//  Created by Pierluca Lippi on 11/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//

import SwiftUI

struct ColorBackground: View {
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [firstColor, secondColor]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
    }
}

struct ColorBackground_Previews: PreviewProvider {
    static var previews: some View {
        ColorBackground()
    }
}
