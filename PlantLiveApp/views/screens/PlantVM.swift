//
//  PlantVM.swift
//  PlantLiveApp
//
//  Created by Emiralp Duman on 5.06.2022.
//

import Foundation
import CoreLocation
import Alamofire

class PlantVM {
    let plantId: String
    private var plant: Plant
    
    var countryOfOrigin: String {
        plant.countryOfOrigin
    }
    
    var name: String {
        plant.name
    }
    
    var imageName: String {
        plant.img
    }
    
    var description: String {
        plant.description
    }
    
    var coordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: Double(plant.latitude) ?? 41.024447, longitude: Double(plant.longitude) ?? 28.976778)
    }
    
    
    init(_ plantId: String) {
        self.plantId = plantId
        self.plant = Plant()
        
        
        
//        //TODO -2 "force-unwraps"
//
//        var plantToPass: Plant?
//        let request = AF.request("https://plankton-app-jr8ee.ondigitalocean.app/api/plants/\(plantId)")
//        request.responseDecodable(of: Plant.self){ response in
//            plantToPass = response.value!
//        }
//        print(plantToPass!)
//        self.plantId = plantId
//        plant = plantToPass!
    }
}
