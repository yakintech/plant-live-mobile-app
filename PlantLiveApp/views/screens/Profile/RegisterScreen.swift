//
//  RegisterScreen.swift
//  PlantLiveApp
//
//  Created by Sena Kurtak on 8.06.2022.
//

import SwiftUI

import Alamofire

struct RegisterScreen: View {
    @State var registerModel: RegisterModel = RegisterModel()
    @State var showConfirmScreen = false
    
    
    var body: some View {
        
        VStack{
            HStack{
                Image(systemName: "arrow.left")
                    .padding(20)
                    .foregroundColor(Color(red: (58/250), green: 58/250, blue: 58/250))
                    .padding(30)
                Text("Create an account")
                Spacer()
            }
            .frame(width: 450 , height: 50)
            .background(.white)
            VStack{
                VStack{
                    HStack{
                        Image(systemName: "at")
                        TextField("Email:",text: $registerModel.email)
                            .textInputAutocapitalization(.never)
                        Spacer()
                            .background(.white)
                    }
                    .padding()
                    Divider()
                    HStack{
                        Image(systemName: "lock.circle")
                        SecureField("Password:",text: $registerModel.password)
                        Spacer()
                        Image(systemName: "eye")
                            .background(.white)
                    }
                    
                    .padding()
                    Divider()
                    HStack{
                        Image(systemName: "lock.circle")
                        TextField("Password confirm:",text: $registerModel.confirmpassword)
                        Spacer()
                        Image(systemName: "eye")
                    }
                    .padding()
                    VStack{
                        HStack{
                            Image(systemName: "circle")
                                .padding()
                            Text("Unsubscribe from the mailing list")
                            Spacer()
                                .background(.white)
                            
                        }
                        HStack{
                            Image(systemName: "circle")
                                .padding()
                            Text("I accept the Terms of use")
                            Spacer()
                                .background(.white)
                            
                        }
                        .background(.white)
                        HStack{
                            Button("Create an account"){
                                let userrepo = UserRepository()
                                
                                userrepo.register(registerModel: registerModel) { _ in
                                   
                                    //Eğer işlem başarılıysa confirmCode ekranına gidecek!!
                                    showConfirmScreen = true
                                    print("OKEY!")
                                }
                                
                            }
                            .foregroundColor(.white)
                            .padding()
                            .border(Color(red: (102/250), green: 102/250, blue: 102/250), width: 1)
                            .background(Color(red: (104/250), green: 141/250, blue: 102/250))
                            .cornerRadius(100)
                            .opacity(0.7)
                            
                            
                            NavigationLink("", destination:  RegisterEMailConfirmCodeScreen(email: registerModel.email), isActive: $showConfirmScreen)
                        }
                    }
                }
                .padding(20)
                .frame(width: 380 , height: 470)
                .background(.white)
                .padding(20)
                .cornerRadius(75)
                .padding()
            }
            VStack{
                Text("Already have an account?")
                Text("Log in")
            }
            .frame(width: 370 , height: 100)
            .background(.white)
            //.background(Color(red: (96/250), green: 89/250, blue: 89/250))
            Spacer()
            
        }
        
        .background(.black)
        
        
        
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
