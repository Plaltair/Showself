//
//  ContentView.swift
//  Showself
//
//  Created by Pierluca Lippi on 07/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//

import SwiftUI

struct Start: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        NavigationView {
        
            VStack {
                
                Spacer()
                
                ZStack {
                    
                    ColorBackground()
                    
                    VStack {
                        
                        Spacer()
                    
                        Text("Showself")
                            .font(.custom("BRODY", size: 80))
                            .foregroundColor(Color.white)
                        
                        Spacer()
                            
                        
                        Text("slogan")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                        
                    }
  
                }
                
                Spacer()
                
                VStack {
                    
                    Spacer()
                    
                    VStack {
                
                        TextField("email", text: $email)
                            .padding([.leading, .trailing], 20)
                            .font(.headline)
                        
                        Divider()
                            .padding([.leading, .trailing], 20)
                        
                    }
                    
                    Spacer()
                    
                    VStack {
                    
                        SecureField("password", text: $password)
                            .padding([.leading, .trailing], 20)
                            .font(.headline)
                        
                        Divider()
                            .padding([.leading, .trailing], 20)
                            
                    }
                    
                    Spacer()
                    
                }
                
                VStack {
                    
                    VStack {

                        NavigationLink(destination: Tabs()) {
                            Text("logIn")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(firstColor)

                        }
                        
                        Divider()
                            .padding([.leading, .trailing], 20)
                        
                    }
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: Registration()) {
                        Text("noAccount")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(firstColor)
                    }
                
                }
                
                Spacer()
                
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start()
    }
}
