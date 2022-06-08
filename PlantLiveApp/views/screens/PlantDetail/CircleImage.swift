//
//  CircleImage.swift
//  PlantLiveApp
//
//  Created by Yakup BERKTAŞ on 8.06.2022.
//

import SwiftUI

struct CircleImage: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.green, lineWidth:  4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: "devetabani")
    }
}
    
