
//
//  ContentView.swift
//  plantList
//
//  Created by Zeliha Uslu on 17.05.2022.
//

import SwiftUI

struct ContentView: View {
  
  @State var loginStatus : Bool = false
  
  @State var tips : [String] = [
    "Plants", "Fertilizer", "Seed", "Tools", "Pesticices"
  ]
  
  @State var tip : [TipModel] = [
    TipModel(name: "Plant", img: "planticon"),
    TipModel(name: "Fertilizer", img: "gubre"),
    TipModel(name: "Seed", img: "seed"),
    TipModel(name: "Tools", img: "tool"),
    TipModel(name: "Pesticices", img: "ilac")
    
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
    
    
    
    TabView(selection: $selectedTab) {
      
      
      NavigationView{
        HomeView(tips: $tips, selectedTab: $selectedTab, plants: $plants, search: $search, tip: $tip)
      }
      .tabItem {
        Image(systemName: "leaf.arrow.triangle.circlepath")
        Text("Plant")
      }.tag(0)
      
      
      NavigationView{
        Text("Alarm")
      }
      .tabItem {
        Image(systemName: "alarm")
        Text("Alarm")
      }.tag(1)
        .badge(5)
      
      
      NavigationView{
        MainProfilePageScreen()
      }
      .tabItem {
        Image(systemName: "brain.head.profile")
        Text("Profile")
      }.tag(2)
    }
    .onAppear(){
      let userDefaultService = UserDefaultService()
      
      let email = userDefaultService.getLoginStorage()
      
      if(email == ""){
        loginStatus = false
      }
      else{
        loginStatus = true
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
