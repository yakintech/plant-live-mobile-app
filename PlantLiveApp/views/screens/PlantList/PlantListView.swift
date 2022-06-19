//
//  PlantListView.swift
//  PlantLiveApp
//
//  Created by Ertugrul Berber on 19.06.2022.
//

import SwiftUI

struct PlantListView: View {
    
    var plantRepository = PlantRepository()
    
    @State var empty : [Plant] = []
    
    var body: some View {
        VStack{
            ForEach(empty, id: \.self._id) {item in
                Text(item._id)
            }
        }.onAppear() {
            plantRepository.getAll() { response in
                empty = response
            }
        }
    }
}

struct PlantListView_Previews: PreviewProvider {
    static var previews: some View {
        PlantListView()
    }
}
