//
//  ProfilePlantList.swift
//  PlantLiveApp
//
//  Created by Berkay Yaslan on 23.05.2022.
//

import SwiftUI

struct ProfilePlantList: View {
    @State var plants: [Plant] = []
    let repo = PlantRepository()
    
    let columns = [GridItem(.flexible(minimum: 100, maximum: 180)),
                     GridItem()]
  
    var body: some View {
                
        VStack {
          Divider()
          
          ScrollView(showsIndicators: false) {
            
            LazyVGrid(columns: columns, spacing: 10) {
              ForEach(plants, id:\.self) { plant in
                
                NavigationLink(destination: PlantDetail(id: plant._id)){
                  
                  VStack {
                      AsyncImage(url: URL(string: plant.img), content: { image in image.resizable()}, placeholder: { Image("tree").resizable()})
                      .frame(width: 180, height: 180)
                      .overlay(Rectangle()
                        .background(.thinMaterial)
                        .frame(height: 30)
                        .opacity(0.3), alignment: .bottom)
                      .overlay(Text(plant.name)
                        .font(.title2)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .padding(.bottom, 3.0), alignment: .bottom)
                  }
                }
              }
            }
          }
        }
        .padding(.horizontal, 10.0)
        .onAppear() {
            repo.getAll() { response in
                plants = response
            }
        }
      }
}


struct ProfilePlantList_Previews: PreviewProvider {
  static var previews: some View {
    ProfilePlantList()
  }
}
