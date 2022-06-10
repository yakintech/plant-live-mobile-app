//
//  PlantVM.swift
//  PlantLiveApp
//
//  Created by Emiralp Duman on 5.06.2022.
//

import Foundation
import CoreLocation
import Alamofire

class PlantVM: ObservableObject {
    private let apiEndPointUrl = "https://plankton-app-jr8ee.ondigitalocean.app/api/plants"
    var plantId: String = ""
    @Published private var plant = Plant()
    
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
        let request = AF.request("\(apiEndPointUrl)/\(plantId)")
        request.responseDecodable(of: Plant.self){ response in
            self.plant = response.value ?? Plant()
        }
    }
}
