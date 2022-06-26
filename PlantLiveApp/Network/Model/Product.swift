//
//  Product.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 22.05.2022.
//

import Foundation
import CloudKit


struct Product : Codable, Hashable{
    var id : Int = 0
    var name : String = ""
    var unitPrice : Double = 0.0
}
