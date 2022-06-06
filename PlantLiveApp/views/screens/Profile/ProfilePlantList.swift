//
//  ProfilePlantList.swift
//  PlantLiveApp
//
//  Created by Berkay Yaslan on 23.05.2022.
//

import SwiftUI

struct ProfilePlantList: View {
  
  @State var plants = ["devetabani", "grass", "ot2", "greenPlant", "lotus", "cicek", "ot", "cactus"]
  
  let columns = [GridItem(.flexible(minimum: 120, maximum: 300 )),
                 GridItem()]
  
  var body: some View {
    
    VStack {
      
      Divider()
      
      ScrollView(showsIndicators: false) {
        
        Spacer()
        
        LazyVGrid(columns: columns, spacing: 10) {
          ForEach(plants, id:\.self) { item in
            
            NavigationLink(destination: PlantDetail(name: item, description: item.description)){
              
              VStack {
                Image(item)
                  .resizable()
                  .scaledToFit()
                  .frame(width: 180, height: 180)
                  .overlay(Rectangle()
                    .background(.thinMaterial)
                    .frame(height: 30)
                    .opacity(0.3), alignment: .bottom)
                  .overlay(Text(item)
                    .font(.title2)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .padding(.bottom, 5.0), alignment: .bottom)
              }
            }
          }
        }
      }
    }
    .padding(.horizontal)
    .background(Color("mintcream"))
  }
}


struct ProfilePlantList_Previews: PreviewProvider {
  static var previews: some View {
    ProfilePlantList()
  }
}
