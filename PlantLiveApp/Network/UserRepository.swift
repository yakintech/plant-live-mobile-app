//
//  UserRepository.swift
//  PlantLiveApp
//
//  Created by Sena Kurtak on 8.06.2022.
//

import Foundation

import Alamofire

class UserRepository{
    
    func register(registerModel: RegisterModel, completionHandler: @escaping (RegisterResponseModel) -> Void){
        
        
        //Alamofire operations...
        
        
        let requestModel : [String : Any] = [
            
            "email" : registerModel.email,
            "password" : registerModel.password
        ]
        
        
        AF.request("https://plankton-app-jr8ee.ondigitalocean.app/api/users/register", method: .post, parameters: requestModel, encoding: JSONEncoding.default)
            .responseDecodable(of: RegisterResponseModel.self){ response in
                
                completionHandler(response.value!)
                
            }
        
    }
    
}
