//
//  LoginScreen.swift
//  PlantLiveApp
//
//  Created by Sena Kurtak on 8.06.2022.
//

import SwiftUI

struct LoginScreen: View {
    @State private var userNameLogIn = ""
    @State private var passwordLogIn = ""
    
    var body: some View {
        ZStack{
            VStack{
                Text("Welcome back!")
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(30)
                Spacer()
                VStack{
                    TextField("Username:",text: $userNameLogIn)
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 370, height: 50)
                        .border(Color(red: (31/250), green: 34/250, blue: 36/250))
                    //                        .background(Color(red: (31/250), green: 34/250, blue: 36/250))
                    //                        .cornerRadius(10)
                        .padding()
                    TextField("Password:",text: $passwordLogIn)
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 370, height: 50)
                        .border(Color(red: (31/250), green: 34/250, blue: 36/250))
                    //                        .background(Color(red: (31/250), green: 34/250, blue: 36/250))
                    //                        .cornerRadius(10)
                    HStack{
                        Text("Forgot your password?")
                            .fontWeight(.light)
                            .foregroundColor(.blue)
                        Spacer()
                    }
                    HStack{
                        Text("Create an account")
                            .foregroundColor(.white)
                            .frame(width: 370, height: 50)
                            .background(Color(red: (104/250), green: 141/250, blue: 102/250))
                            .cornerRadius(10)
                    }
                    Spacer()
                }
                .padding(25)
            }
            .background(Color(red: (59/250), green: 61/250, blue: 67/250))
            .opacity(0.70)
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
