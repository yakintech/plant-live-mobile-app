//
//  Plant.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 15.05.2022.
//

import Foundation


struct Plant : Hashable {

    var name : String = ""
    var description : String = ""
    var image : String = ""
    var id : UUID = UUID()
//    var category : Category = Category()
    
}

struct tipType : Hashable{
    var name : String = ""
    var image : String = ""
    var id : UUID = UUID()

}

