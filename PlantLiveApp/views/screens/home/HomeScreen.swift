//
//  HomeScreen.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 15.05.2022.
// #colorLiteral(red: 0.188349992, green: 0.1137254902, blue: 0.9098039216, alpha: 1)

import SwiftUI

struct HomeScreen: View {
    
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
        
        ZStack {
            VStack{
                tabbarHomeScreen(tips: $tips, selectedTab: $selectedTab, plants: $plants, search: $search, tip: $tip)
              

            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
