//
//  PlantListModel.swift
//  PlantLiveApp
//
//  Created by Zeliha Uslu on 4.06.2022.
//

import Foundation

struct PlantsList : Codable, Hashable, Identifiable {
    var id : Int = 0
    var name : String = ""
    var description : String = ""
}
