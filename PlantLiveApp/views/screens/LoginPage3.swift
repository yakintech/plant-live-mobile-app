//
//  LoginPage3.swift
//  PlantLiveApp
//
//  Created by Sena Kurtak on 19.05.2022.
//

import SwiftUI

struct LoginPage3: View {
    
    @State private var userNameLogIn = ""
    @State private var passwordLogIn = ""
    
    
    var body: some View {
        ZStack{
            
            VStack{Image("plant1")
                    .resizable()
                    .frame(width: 500, height: 900)
                    .blur(radius: 0, opaque: true)
            }
            VStack{
                Text("Plant Live App")
                    .foregroundColor(Color(red: (0/250), green: 100/250, blue: 102/250))
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(30)
                Spacer()
                Spacer()
                VStack{
                    TextField("Username:",text: $userNameLogIn)
                    Spacer()
                    TextField("Password:",text: $passwordLogIn)
                    Spacer()
                    HStack{
                        Spacer()
                        Text("Log in")
                            .foregroundColor(Color(red: (104/250), green: 141/250, blue: 102/250))
                            .padding(5)
                    }
                }
            }
            .padding(20)
            .frame(width: 380 , height: 200)
            .background(.white)
            .opacity(0.70)
            .padding(20)
            .cornerRadius(75)
            .padding()
            
        }
    }
}

struct LoginPage3_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage3()
    }
}
