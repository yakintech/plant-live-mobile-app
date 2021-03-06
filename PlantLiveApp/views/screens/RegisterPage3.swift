//
//  RegisterPage3.swift
//  PlantLiveApp
//
//  Created by Sena Kurtak on 18.05.2022.
//

import SwiftUI

struct RegisterPage3: View {
    
    @State private var userName = ""
    @State private var password = ""
    @State private var email = ""
    
    
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
                        Image(systemName: "person.circle")
                        TextField("Name:",text: $userName)
                        Spacer()
                            .background(.white)
                    }
                    .padding()
                    Divider()
                    HStack{
                        Image(systemName: "at")
                        TextField("Email:",text: $email)
                        Spacer()
                            .background(.white)
                    }
                    .padding()
                    Divider()
                    HStack{
                        Image(systemName: "lock.circle")
                        TextField("Password:",text: $password)
                        Spacer()
                        Image(systemName: "eye")
                            .background(.white)
                    }
                
                    .padding()
                    Divider()
                    HStack{
                        Image(systemName: "lock.circle")
                        TextField("Password confirm:",text: $password)
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
                            Text("Create an account")
                                .foregroundColor(.white)
                                .padding()
                                .border(Color(red: (102/250), green: 102/250, blue: 102/250), width: 1)
                                .background(Color(red: (104/250), green: 141/250, blue: 102/250))
                                .cornerRadius(100)
                                .opacity(0.7)
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
            Spacer()

        }
        
        .background(.black)
        
    }
}

struct RegisterPage3_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPage3()
    }
}
