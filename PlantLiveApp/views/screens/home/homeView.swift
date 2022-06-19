//
//  homeView.swift
//  PlantLiveApp
//
//  Created by Zeliha Uslu on 27.05.2022.
//

import SwiftUI

struct HomeView : View{
    
    @Binding var tips : [String]
    @Binding var selectedTab : Int
    @Binding var plants : [Plant]
    @Binding var search : String
    @Binding var tip : [tipType]
    
    var body: some View{
        ZStack{
            
            Color(
                red: 248/255,
                green: 248/255,
                blue: 248/255,
                opacity: 1.0)
                .ignoresSafeArea(.all)
            
                ScrollView{
                    
                    VStack{
                            
                        Header()
                        tabViewScreen()
                        tipsScreen(tip: $tip)
                        categoryScreen(plants: $plants)
                        
                    }
                        .background(Color(
                        red: 248/255,
                        green: 248/255,
                        blue: 248/255,
                        opacity: 1.0))
                        .navigationBarHidden(true)
                }
                
        }
    }
}

