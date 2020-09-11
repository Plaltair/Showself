//
//  Registration.swift
//  Showself
//
//  Created by Pierluca Lippi on 09/03/2020.
//  Copyright © 2020 Pierluca Lippi. All rights reserved.
//

import SwiftUI

struct Registration: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    @Environment(\.presentationMode) private var presentation
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            ZStack {
            
                ColorBackground()
                
                VStack {
                    
                    Spacer()
                    
                    Text("Showself")
                        .font(.custom("brody", size: 80))
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Text("slogan")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
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
                
                VStack {
                
                    SecureField("confirmPassword", text: $confirmPassword)
                        .padding([.leading, .trailing], 20)
                        .font(.headline)
                    
                    Divider()
                        .padding([.leading, .trailing], 20)
                        
                }
                
                Spacer()
                
            }
            
            VStack {
                
                VStack {
            
                    Button(action: {
                        
                    }) {
                        Text("signIn")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(firstColor)
                    }
                    
                    Divider()
                        .padding([.leading, .trailing], 20)
                }
                
                Spacer()
                
                
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }) {
                    Text("goBack")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(firstColor)
                }
            
            }
            
            Spacer()
            
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
    }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
