//
//  ProfilePlantList.swift
//  PlantLiveApp
//
//  Created by Berkay Yaslan on 23.05.2022.
//

import SwiftUI

struct ProfilePlantList: View {
  
  @State var plants = ["cicek", "grass", "ot2", "greenPlant", "lotus", "indoorPlant", "ot", "cactus"]
  
  let columns = [GridItem(spacing: -10),
                 GridItem()
  ]
  
  var body: some View {
    
    VStack {
      ScrollView(showsIndicators: false) {
        Spacer()
        
        LazyVGrid(columns: columns, spacing: 10) {
          ForEach(plants, id:\.self) { item in
            
            NavigationLink(destination: PlantDetail(name: item, description: item.description)){
              
              VStack {
                Image(item)
                  .resizable()
                  .frame(width: 160, height: 160)
                  .background(RoundedRectangle(cornerRadius: 20)
                    .stroke(LinearGradient(colors: [Color("defaultgreen"), Color("olivine")], startPoint: .bottomTrailing, endPoint: .topLeading), lineWidth: 5))
                Text(item)
                  .frame(width: 120, height: 30)
                  .background(LinearGradient(colors: [Color("defaultgreen"), Color("olivine")], startPoint: .bottom, endPoint: .top))
                  .cornerRadius(20)
                  .foregroundColor(.white)
              }
              .padding(.top)
            }
          }
        }
      }
      
    }
    .background(Color("mintcream"))
  }
}


struct ProfilePlantList_Previews: PreviewProvider {
  static var previews: some View {
    ProfilePlantList()
  }
}
