//
//  Tabs.swift
//  Showself
//
//  Created by Pierluca Lippi on 11/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//

import SwiftUI

struct Tabs: View {
    
    @ObservedObject var viewRouter = ViewRouter()
    
    private var tabIconSize: CGFloat = 70
    private var tabIconPadding: CGFloat = 20
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            Spacer()
            
            if self.viewRouter.currentView == .stories {
                Stories()
            }
            else if self.viewRouter.currentView == .messages {
                Text("Messages")
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
            }
            else if self.viewRouter.currentView == .profile {
                Profile()
            }
            
            Spacer()
            
            HStack {
                Image(systemName: self.viewRouter.currentView == .stories ? "heart.fill" :  "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(self.tabIconPadding)
                    .frame(width: self.tabIconSize, height: self.tabIconSize)
                    .onTapGesture {
                        self.viewRouter.currentView = .stories
                    }
                
                Image(systemName: self.viewRouter.currentView == .messages ? "bubble.left.fill" : "bubble.left")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(self.tabIconPadding)
                    .frame(width: self.tabIconSize, height: self.tabIconSize)
                    .onTapGesture {
                        self.viewRouter.currentView = .messages
                    }
                
                Image(systemName: self.viewRouter.currentView == .profile ? "person.fill" : "person")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(self.tabIconPadding)
                    .frame(width: self.tabIconSize, height: self.tabIconSize)
                    .onTapGesture {
                        self.viewRouter.currentView = .profile
                    }
                Image(systemName: "plus")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(self.tabIconPadding)
                    .frame(width: self.tabIconSize, height: self.tabIconSize)
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/15)
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
