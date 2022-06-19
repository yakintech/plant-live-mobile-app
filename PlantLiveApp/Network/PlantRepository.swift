//
//  PlantRepository.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 19.06.2022.
//

import Foundation
import Alamofire



class PlantRepository {
    
    func getAll(completionHandler: @escaping ([Plant]) -> Void) {
        let request2 = AF.request("\(ApiConfig.baseUrl)/api/plants/")
        request2.responseDecodable(of: [Plant].self){ response in
            completionHandler(response.value!)
            print(response.value!)
        }
    }
    
    func getByID(Id: String, completionHandler: @escaping (Plant) -> Void) {
        
        let request = AF.request("\(ApiConfig.baseUrl)/api/plants/\(Id)")
        request.responseDecodable(of: Plant.self){ response in
            completionHandler(response.value!)
        }
    }
    
    
    
    
    
    
}
