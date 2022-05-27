//
//  tabbarScreen.swift
//  PlantLiveApp
//
//  Created by Zeliha Uslu on .
//

import SwiftUI

struct tabbarHomeScreen: View{
    
    @Binding var tips : [String]
    @Binding var selectedTab : Int
    @Binding var plants : [Plant]
    @Binding var search : String
    @Binding var tip : [tipType]
    
    var body: some View{
        
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

