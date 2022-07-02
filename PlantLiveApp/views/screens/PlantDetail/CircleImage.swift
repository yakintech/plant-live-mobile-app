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
        AsyncImage(url: URL(string: imageName),
                   content: { image in image.resizable()},
                   placeholder: { Image("tree").resizable() }
        )            .clipShape(Circle())
            .overlay {
                Circle().stroke(Color(
                    red: 104/255,
                    green: 141/255,
                    blue: 70/255,
                    opacity: 1.0), lineWidth:  4)
            }
            .shadow(radius: 7)
            
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: "devetabani")
    }
}
    
