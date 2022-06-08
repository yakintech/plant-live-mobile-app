//
//  ForgotPasswordScreen.swift
//  PlantLiveApp
//
//  Created by Sena Kurtak on 8.06.2022.
//

import SwiftUI

struct ForgotPasswordScreen: View {
    
    @State var emailText = ""
    
    var body: some View {
        
        ZStack {
            NavigationView {
                ScrollView(.vertical, showsIndicators: false){
                    
                    HStack {
                        Text("Forgot your password?")
                            .font(.system(size: 20))
                            .fontWeight(.regular)
                            .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                            .padding()
                        Spacer()
                    }
                    
                    HStack {
                        Text("Confirm your e-mail and we will send the instructions.")
                            .fontWeight(.thin)
                            .foregroundColor(.gray)
                            .padding()
                        Spacer()
                    }
                    
                    HStack {
                        Text("E-mail")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                            .padding()
                        Spacer()
                    }
                    
                    HStack {
                        TextField("example@plantapp.com", text: $emailText)
                            .padding(.leading, 10)
                            .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                            .textFieldStyle(.roundedBorder)
                            .textInputAutocapitalization(.never)
                        Spacer()
                    }
                    Spacer()
                    Spacer()
                    
                    HStack {
                        Button {
                        } label: {
                            Text("Reset Password")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color(red: 0.41, green: 0.55, blue: 0.27))
                                .cornerRadius(50.0)
                        }
                    }
                    .navigationBarTitle("plantApp", displayMode: .inline)
                }
            }
        }
    }
}

struct ForgotPasswordScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordScreen()
    }
}
