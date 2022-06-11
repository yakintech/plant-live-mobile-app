//
//  MainProfilePageScreen.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 11.06.2022.
//

import SwiftUI

struct MainProfilePageScreen: View {
    
    @State var loginStatus = false
    
    var body: some View {
        VStack{
            
            if(loginStatus){
                ProfilePage()
            }
            else{
                LoginScreen()
            }
            
        }
        .onAppear(){
            let userDefaultService = UserDefaultService()
            
            let email = userDefaultService.getLoginStorage()

            if(email == ""){
                loginStatus = false
            }
            else{
                loginStatus = true
            }
        }
    }
}

struct MainProfilePageScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainProfilePageScreen()
    }
}
