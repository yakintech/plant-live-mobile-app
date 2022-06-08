//
//  PlantListScreen.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 15.05.2022.
//

import SwiftUI

struct PlantListScreen: View {
    
    
    
    var plants : [Plant] = [
        Plant(name: "Deve Tabanı", description: "Çok severiz", img:"devetabani"),
        Plant(name: "Peygamber Kılıcı", description: "Çok yaşar", img: "devetabani"),
        Plant(name: "Benjamin", description: "Bejamin Button", img: "devetabani"),
        Plant(name: "Kaktüs", description: "Su istemez", img: "devetabani"),
        Plant(name: "Orkide", description: "çok pahalı...", img: "devetabani")
    ]
    
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        Text("")
        
//        NavigationView{
//            LazyVGrid(columns: columns, spacing: 20) {
//
//                ForEach(plants, id:\.self){item in
//
//                    NavigationLink(destination: PlantDetail(forId: "")){
//
//                        VStack{
//                            Image(item.image)
//                                .resizable()
//                                .frame(width: 50.0, height: 50.0)
//                            Text(item.name)
//
//
//                        }
//
//                   }
//                }
//
//            }
//            .navigationTitle("Plant List")
//
//        }
        
     
        
    }
}

struct PlantListScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlantListScreen()
    }
}
