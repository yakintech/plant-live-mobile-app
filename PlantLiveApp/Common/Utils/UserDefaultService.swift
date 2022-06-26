//
//  UserDefaultService.swift
//  PlantLiveApp
//
//  Created by Sena Kurtak on 8.06.2022.
//

import Foundation

class UserDefaultService {
  
  func setUserName (name: String) {
    UserDefaults.standard.set(name, forKey: "userName")
  }
  
  func getUserName() -> String {
    let userName = UserDefaults.standard.string(forKey: "userName")
    return userName ?? ""
  }
  
  //Kullanıcı login veya register olduğunda storage a ( userdefaultsa ) kullanıcının emailini yazıyorum
  func setLoginStorage(email: String){
    UserDefaults.standard.set(email, forKey: "loginStorage")
  }
  
  func getLoginStorage() -> String{
    let email = UserDefaults.standard.string(forKey: "loginStorage")
    
    return email ?? ""
  }
}
