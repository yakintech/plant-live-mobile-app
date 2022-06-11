//
//  LoginScreen.swift
//  PlantLiveApp
//
//  Created by Sena Kurtak on 8.06.2022.
//

import SwiftUI

struct LoginScreen: View {
    @State var loginModel = LoginModel()
    @State var goProfileScreen = false
    
    var body: some View {
        ZStack{
            VStack{
                Text("Welcome back!")
                    .foregroundColor(Color(red: 104/255,green: 141/255,blue: 70/255,opacity: 1.0))
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(20)
                Text("Enter your user details below to sign in toyour accont")
                    .foregroundColor(Color(red: 104/255,green: 141/255,blue: 70/255,opacity: 1.0))
                    .font(.caption)
                    .fontWeight(.bold)
                Spacer()
                VStack{
                    TextField("Email:",text: $loginModel.email)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 370)
                        .textInputAutocapitalization(.never)
                    SecureField("Password:",text: $loginModel.password)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 370)
                    HStack{
                        Button("Log In"){
                            
                            let userRepo = UserRepository()
                            
                            userRepo.login(loginModel: loginModel){ data in
                                
                                let userDefaultService = UserDefaultService()
                                
                                userDefaultService.setLoginStorage(email: loginModel.email)
                                
                                goProfileScreen = true
                                
                            }
                             
                            
                        }
                        .foregroundColor(Color(red: 104/255,green: 141/255,blue: 70/255,opacity: 1.0))
                        .frame(width: 370, height: 50)
                        .background(Color(red: 104/255,green: 141/255,blue: 70/255,opacity: 0.5))
                        .cornerRadius(30)
                    }
                    HStack{
                        Text("Forgot your password?")
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 104/255,green: 141/255,blue: 70/255,opacity: 1.0))
                            .padding()
                        
                    }
                    
                    NavigationLink(destination: RegisterScreen()){
                        Text("Create an account")
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 104/255,green: 141/255,blue: 70/255,opacity: 1.0))
                            .padding()
                    }
                    
                    
                    NavigationLink("", destination: ProfilePage(), isActive: $goProfileScreen)
                    
                    Spacer()
                }
                .padding(25)
            }
            .padding(30)
            .background(.white)
            
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
