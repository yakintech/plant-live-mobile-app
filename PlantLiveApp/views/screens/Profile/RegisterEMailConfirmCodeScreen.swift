//
//  RegisterEMailConfirmCodeScreen.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 11.06.2022.
//

import SwiftUI

struct RegisterEMailConfirmCodeScreen: View {
    
    var email : String
    @State var registerCodeconfirmModel = RegisterConfirmCodeModel()
    @State var codeOk : Bool = true
    @State var goProfileScreen : Bool = false;
    
    var body: some View {
        
        VStack{
            
            if !codeOk{
                Text("Confirm code error! ")
            }
            
            
            
            TextField("ConfirmCode",
                      text : $registerCodeconfirmModel.confirmCode
            )
                .padding()
            Button("Confirm"){
                
                registerCodeconfirmModel.email = email;
                
                let userRepo = UserRepository()
                
                userRepo.registerConfirm(registerCodeModel: registerCodeconfirmModel){item in
                    
                    if(item.codeStatus == false){
                        codeOk = false
                    }
                    else{
                        
                        let userDefaultService = UserDefaultService()
                        
                        userDefaultService.setLoginStorage(email: email)
                        
                        goProfileScreen = true
                        
                    }
                   
                }
            }
            
            NavigationLink("", destination: ProfilePage(), isActive: $goProfileScreen)
            
        }
        
        
    }
}

