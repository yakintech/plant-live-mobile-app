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
        Plant(name: "Outdoor", description: "Çok severiz", img: "lotus"),
        Plant(name: "Indoor", description: "Çok yaşar", img: "indoorPlant"),
        Plant(name: "Garden", description: "Bejamin Button", img: "ot"),
        Plant(name: "Flowering Plants", description: "Su istemez", img: "cicek"),
        Plant(name: "Green Plants", description: "çok pahalı...", img: "greenPlant"),
        Plant(name: "Cactus", description: "çok pahalı...", img: "cactus"),
        Plant(name: "Trees", description: "çok pahalı...", img: "tree"),
        Plant(name: "Agricultural Crops", description: "çok pahalı...", img: "seftali")
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
