//
//  TipRepository.swift
//  PlantLiveApp
//
//  Created by Alp Orkun Gungor on 3.07.2022.
//

import Foundation
import Alamofire

class TipRepository {
    
    func getAllTips(completion:@escaping ([TipModel]) -> Void){
        
        let request = AF.request("https://plankton-app-jr8ee.ondigitalocean.app/api/tips")
        
        request.responseDecodable(of: [TipModel].self){ response in
            
            completion(response.value!)
            
        }
    }
    
    func getTipsById(id: Int, completion: @escaping (TipModel) -> Void){
        
        let request = AF.request("https://plankton-app-jr8ee.ondigitalocean.app/api/tips")
        
        request.responseDecodable(of: TipModel.self){ response in
            
            completion(response.value!)
            
        }
        
    }
    
    
}
