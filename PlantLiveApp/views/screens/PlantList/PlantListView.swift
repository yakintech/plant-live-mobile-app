//
//  PlantListView.swift
//  PlantLiveApp
//
//  Created by Ertugrul Berber on 19.06.2022.
//

import SwiftUI

struct PlantListView: View {
    @ObservedObject private var repo = PlantListVM()
    
    let columns = [GridItem(.flexible(minimum: 100, maximum: 180)), GridItem()]
    
    var body: some View {
      
      VStack {
        
        Divider()
        
        ScrollView(showsIndicators: false) {
          
          Spacer()
          
          LazyVGrid(columns: columns, spacing: 10) {
              ForEach(repo.plants, id:\.self) { plant in
              
                NavigationLink(destination: PlantDetail(forId: plant._id)){
                
                VStack {
                    AsyncImage(url: URL(string: plant.img), content: { image in image.resizable()}, placeholder: { Image("tree").resizable()})
                        .scaledToFit()
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
    }
}



struct PlantListView_Previews: PreviewProvider {
    static var previews: some View {
        PlantListView()
    }
}
