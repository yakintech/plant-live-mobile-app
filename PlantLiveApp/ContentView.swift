
//
//  ContentView.swift
//  plantList
//
//  Created by Zeliha Uslu on 17.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var tips : [String] = [
        "Plants", "Fertilizer", "Seed", "Tools", "Pesticices"
    ]
    
    @State var tip : [tipType] = [
        tipType(name: "Plant", image: "planticon"),
        tipType(name: "Fertilizer", image: "gubre"),
        tipType(name: "Seed", image: "seed"),
        tipType(name: "Tools", image: "tool"),
        tipType(name: "Pesticices", image: "ilac")
        
    ]
    
    @State var selectedTab : Int = 0
    
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
    
    
    
    
    @State var search : String = ""
    
    var body: some View {
        
        
        
        TabView(selection: $selectedTab) {
            HomeView(tips: $tips, selectedTab: $selectedTab, plants: $plants, search: $search, tip: $tip).tabItem {
                Image(systemName: "leaf.arrow.triangle.circlepath")
                Text("Plant")
            }.tag(0)
            
            Text("Alarm")
                .tabItem {
                    Image(systemName: "alarm")
                    Text("Alarm")
                }.tag(1)
                .badge(5)
            
            
            ProfilePage()
                .tabItem {
                    Image(systemName: "brain.head.profile")
                    Text("Profile")
                }.tag(2)
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
