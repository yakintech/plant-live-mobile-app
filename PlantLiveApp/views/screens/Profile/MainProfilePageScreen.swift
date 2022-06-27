//
//  MainProfilePageScreen.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 11.06.2022.
//

import SwiftUI

class LoginStatus: ObservableObject {
  
  @Published var login = false
  
}

struct MainProfilePageScreen: View {
  
  @StateObject var loginStatus = LoginStatus()
  
  var body: some View {
    VStack{
      
      if(loginStatus.login){
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
        loginStatus.login = false
      }
      else{
        loginStatus.login = true
      }
    }
  }
}

struct MainProfilePageScreen_Previews: PreviewProvider {
  static var previews: some View {
    MainProfilePageScreen()
  }
}
