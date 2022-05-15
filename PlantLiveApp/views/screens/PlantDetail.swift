//
//  PlantDetail.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 15.05.2022.
//

import SwiftUI

struct PlantDetail: View {
    
    var name : String
    var description : String
    
    var body: some View {
        
        Text("Plant name: " + name)
            .padding()
        
        Text("Description: \(description)")
            .padding()
        
    }
}

