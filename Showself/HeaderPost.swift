//
//  HeaderPost.swift
//  Showself
//
//  Created by Pierluca Lippi on 14/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//

import SwiftUI

struct HeaderPost: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        ZStack {
            colorScheme == .light ? Color.white : Color.black
            
            Text("posts")
                .font(.headline)
                .foregroundColor(colorScheme == .light ? Color.black : Color.white)
            
            HStack {
                Image(colorScheme == .light ? "search_black" : "search")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25, alignment: .center)
                    .padding([.leading, .bottom])
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(colorScheme == .light ? "notification_black" : "notification")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25, alignment: .center)
                        .padding([.trailing, .bottom])
                }
            }
        }
    }
}

struct HeaderPost_Previews: PreviewProvider {
    static var previews: some View {
        HeaderPost()
    }
}
