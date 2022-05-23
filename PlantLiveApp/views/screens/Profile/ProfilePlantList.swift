//
//  ProfilePlantList.swift
//  PlantLiveApp
//
//  Created by Berkay Yaslan on 23.05.2022.
//

import SwiftUI

struct ProfilePlantList: View {
  
  @State var plants : [Plant] = [
    Plant(name: "Outdoor", description: "Çok severiz", image: "lotus"),
    Plant(name: "Indoor", description: "Çok yaşar", image: "indoorPlant"),
    Plant(name: "Garden", description: "Bejamin Button", image: "ot"),
    Plant(name: "Flowering Plants", description: "Su istemez", image: "cicek"),
    Plant(name: "Green Plants", description: "çok pahalı...", image: "greenPlant"),
    Plant(name: "Cactus", description: "çok pahalı...", image: "cactus"),
    Plant(name: "Trees", description: "çok pahalı...", image: "tree"),
    Plant(name: "Agricultural Crops", description: "çok pahalı...", image: "seftali")
  ]
  
  var body: some View {
    
    ScrollView {
      ForEach(plants, id:\.self) { item in
        
        NavigationLink(destination: PlantDetail(name: item.name, description: item.description)){
          
          VStack{
            RoundedRectangle(cornerRadius: 20)
              .fill(LinearGradient(colors: [Color("defaultgreen"), Color("olivine")], startPoint: .topLeading, endPoint: .bottomTrailing))
              .frame(width: .infinity, height: 80)
              .padding(5)
              .overlay(
                HStack {
                  Text(item.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                  Spacer()
                  Image(item.image)
                    .resizable()
                    .frame(width: 90, height: 100, alignment: .leading)
                  
                  
                }
                  .padding(.horizontal))
          }
          .padding(.horizontal)
        }
      }
    }
  }
}


struct ProfilePlantList_Previews: PreviewProvider {
  static var previews: some View {
    ProfilePlantList()
  }
}
