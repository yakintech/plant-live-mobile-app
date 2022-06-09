//
//  PlantDetailBigImage.swift
//  PlantLiveApp
//
//  Created by Ertugrul Berber on 9.06.2022.
//

import SwiftUI

struct PlantDetailBigImage: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 375, height: 400, alignment: .center)
            .cornerRadius(10)
            .border(Color(
                red: 104/255,
                green: 141/255,
                blue: 70/255,
                opacity: 1.0))
            .shadow(radius: 7)
    }
}

struct PlantDetailBigImage_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailBigImage(imageName: "devetabani")
    }
}
