//
//  ProfilePlantList.swift
//  PlantLiveApp
//
//  Created by Berkay Yaslan on 23.05.2022.
//

import SwiftUI

struct ProfilePlantList: View {
  
  @State var plants : [Plant] = [
    Plant(name: "Outdoor",  image: "lotus"),
    Plant(name: "Indoor",  image: "indoorPlant"),
    Plant(name: "Garden",  image: "ot"),
    Plant(name: "Flowering Plants",  image: "cicek"),
    Plant(name: "Green Plants",  image: "greenPlant"),
    Plant(name: "Cactus",  image: "cactus"),
    Plant(name: "Trees", image: "tree"),
    Plant(name: "Agricultural Crops",  image: "seftali")
  ]
  @State private var isPressed = false
  
  var body: some View {
    
    VStack {
      HStack {
        Text("My Garden")
          .font(.body)
          .fontWeight(.black)
          .foregroundColor(Color("defaultgreen"))
        Spacer()
        Button(action: {
          isPressed.toggle()

          
        }) {
          Image(systemName: isPressed ? "star.fill" : "star")
            .foregroundColor(Color("defaultgreen"))
            .imageScale(.large)
        }
      }.padding(.horizontal)
      
      Divider().background(Color("defaultgreen"))
      
      ScrollView(showsIndicators: false) {
        ForEach(plants, id:\.self) { item in
          
          NavigationLink(destination: PlantDetail(name: item.name, description: item.description)){
            
            VStack{
              RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(colors: [Color("defaultgreen"), Color("olivine")], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 360, height: 80)
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
}


struct ProfilePlantList_Previews: PreviewProvider {
  static var previews: some View {
    ProfilePlantList()
  }
}
