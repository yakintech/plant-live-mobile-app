//
//  TipModel.swift
//  PlantLiveApp
//
//  Created by Alp Orkun Gungor on 3.07.2022.
//

import Foundation

struct TipModel : Hashable , Decodable {
    
    var _id : String = ""
    var name : String = ""
    var title : String = ""
    var description : String = ""
    var img : String = ""
    var __v : Int = 0
    
}
