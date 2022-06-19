//
//  UserRepository.swift
//  PlantLiveApp
//
//  Created by Sena Kurtak on 8.06.2022.
//

import Foundation
import Alamofire

class UserRepository{
    
    
     func login(loginModel: LoginModel, completionHandler: @escaping(LoginResponseModel) -> Void){
        
        
        
        let requestModel : [String : Any] = [
            
            "email" : loginModel.email,
            "password" : loginModel.password
        ]
        
        
        AF.request(ApiConfig.baseUrl + "/api/users/login", method: .post, parameters: requestModel, encoding: JSONEncoding.default)
            .responseDecodable(of: LoginResponseModel.self){ response in
                
                completionHandler(response.value!)
                
            }
        
    }
    
    func register(registerModel: RegisterModel, completionHandler: @escaping (RegisterResponseModel) -> Void){
        
        
        //Alamofire operations...
        
        
        let requestModel : [String : Any] = [
            
            "email" : registerModel.email,
            "password" : registerModel.password
        ]
        
        
        AF.request(ApiConfig.baseUrl + "/api/users/register", method: .post, parameters: requestModel, encoding: JSONEncoding.default)
            .responseDecodable(of: RegisterResponseModel.self){ response in
                
          
                completionHandler(response.value!)
                
            }
    }
    
    func registerConfirm(registerCodeModel: RegisterConfirmCodeModel,  completionHandler: @escaping (ConfirmCodeResponseModel) -> Void){
        
        
        
        let requestModel : [String : Any] = [
            
            "email" : registerCodeModel.email,
            "confirmCode" : registerCodeModel.confirmCode
        ]
        
        
        AF.request( ApiConfig.baseUrl +  "/api/confirm", method: .post, parameters: requestModel, encoding: JSONEncoding.default)
            .responseDecodable(of: ConfirmCodeResponseModel.self){ response in
                
          
                completionHandler(response.value!)
                
            }
        
        
    }
    
}
