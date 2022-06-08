//
//  NewPlantDetail.swift
//  PlantLiveApp
//
//  Created by Emiralp Duman on 5.06.2022.
//

import SwiftUI

struct NewPlantDetail: View {
    init(forId plantId: String) {
        plant = PlantVM(plantId)
    }
        
    private let plant: PlantVM
    
    var body: some View {
        VStack {
            
            VStack {
                MapView(coordinates: plant.coordinates)
                    .ignoresSafeArea(edges: .top)
                .frame(height: 300)
                CircleImage(imageName: plant.imageName)
                    .offset(y: -130)
                    .padding(.bottom, -130)
            }

            VStack(alignment: .leading) {
                Text(plant.name)
                    .font(.title)
                HStack {
                    Text(plant.countryOfOrigin)
                    Spacer()

                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()
                Text("About \(plant.name)")
                    .font(.title2)
                Text(plant.description)
            }
            .padding()
            Spacer()
        }
            
    }
}

struct NewPlantDetail_Previews: PreviewProvider {
    static var previews: some View {
        NewPlantDetail(forId: "629c81407cf041db9ca231d0")
    }
}
