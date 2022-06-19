//
//  PlantListVM.swift
//  PlantLiveApp
//
//  Created by Emiralp Duman on 19.06.2022.
//

import Foundation
import Alamofire

class PlantListVM: ObservableObject {
    static func getAll(completionHandler: @escaping ([Plant]) -> Void) {
        let request2 = AF.request("\(ApiConfig.baseUrl)/api/plants/")
        request2.responseDecodable(of: [Plant].self){ response in
            completionHandler(response.value!)
        }
    }
    
    @Published var plants: [Plant] = []
    
    init() {
        Self.getAll() { response in
            self.plants = response
        }
    }
    
}
