
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
            
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "brain.head.profile")
                    Text("Profile")
                }.tag(2)
            
        }
    }
}

struct HomeView : View{
    
    @Binding var tips : [String]
    @Binding var selectedTab : Int
    @Binding var plants : [Plant]
    @Binding var search : String
    @Binding var tip : [tipType]
    
    let columns = [
        GridItem(.flexible())
    ]
    
    
    
    var body: some View{
        
        
        ZStack{
            
            Color(
                red: 248/255,
                green: 248/255,
                blue: 248/255,
                opacity: 1.0)
                .ignoresSafeArea(.all)
            
            NavigationView{
                
                ScrollView{
                    
                    VStack{
                        VStack{
                         Header()
                            TabView{
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(
                                        red: 104/255,
                                        green: 141/255,
                                        blue: 70/255,
                                        opacity: 1.0))
                                    .frame(width: 350, height: 130)
                                    .padding()
                                    .overlay(
                                        ZStack {
                                            Image("partiliyoruz").resizable()
                                            Text("Just need sun!")
                                                .font(.headline)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color(
                                                    red: 104/255,
                                                    green: 141/255,
                                                    blue: 70/255,
                                                    opacity: 1.0))
                                                .padding()
                                                .padding(.horizontal)
                                                .background(Color.white.opacity(0.7))
                                                .cornerRadius(20)
                                        }
                                        
                                    )
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(
                                        red: 104/255,
                                        green: 141/255,
                                        blue: 70/255,
                                        opacity: 1.0))
                                    .frame(width: 350, height: 130)
                                    .padding()
                                    .overlay(
                                        ZStack {
                                            Image("leafs")
                                                .resizable()
                                                .frame(width: 350, height: 130)
                                                .cornerRadius(20)
                                            Text("Plants are waiting for you!")
                                                .font(.headline)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color(
                                                    red: 64/255,
                                                    green: 87/255,
                                                    blue: 43/255,
                                                    opacity: 1.0))
                                                .padding(40)
                                                .background(.white.opacity(0.6)).cornerRadius(20)
                                            
                                        }
                                        
                                    )
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(
                                        red: 175/255,
                                        green: 203/255,
                                        blue: 150/255,
                                        opacity: 1.0))
                                    .frame(width: 350, height: 130)
                                    .padding()
                                    .overlay(
                                        HStack{
                                            Image(systemName: "lightbulb.fill")
                                                .foregroundColor(.yellow)
                                                .font(.title)
                                                .frame(width: 50, height: 50)
                                                .background(Circle().fill(.white))
                                                .shadow(color: .white, radius: 5)
                                                .padding()
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(Color(
                                                    red: 104/255,
                                                    green: 141/255,
                                                    blue: 70/255,
                                                    opacity: 1.0))
                                                .overlay(
                                                    Text("Spin your plants around so they grow evenly and not lopsided. Every week.")
                                                        .font(.caption)
                                                        .fontWeight(.bold)
                                                        .foregroundColor(.white)
                                                        .padding(.horizontal, 30)
                                                )
                                        }.padding(40)
                                        
                                    )
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(
                                        red: 181/255,
                                        green: 141/255,
                                        blue: 70/255,
                                        opacity: 1.0))
                                    .frame(width: 350, height: 130)
                                    .padding()
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(
                                        red: 180/255,
                                        green: 203/255,
                                        blue: 149/255,
                                        opacity: 1.0))
                                    .frame(width: 350, height: 150)
                                    .padding()
                            }.tabViewStyle(.page).frame(width: 350, height: 130)
                        }
                        LazyVGrid(columns: columns, spacing: 20) {
                            
                            
                            VStack{
                                
                                ScrollView(.horizontal) {
                                    
                                    HStack(spacing: 20) {
                                        ForEach(tip, id:\.self){item in
                                            
                                            Button(action: {
                                                
                                            }, label: {
                                                VStack {
                                                    ZStack {
                                                        
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .fill(Color(
                                                                red: 104/255,
                                                                green: 141/255,
                                                                blue: 70/255,
                                                                opacity: 1.0))
                                                            .frame(width: 60, height: 60)
                                                        
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .fill(Color.white)
                                                            .frame(width: 55, height: 55)
                                                            .shadow(color: Color(
                                                                red: 104/255,
                                                                green: 141/255,
                                                                blue: 70/255,
                                                                opacity: 1.0), radius: 5, x: 2, y: 2)
                                                        
                                                        Image(item.image)
                                                            .resizable()
                                                            .frame(width: 50, height: 50, alignment: .center)
                                                            .cornerRadius(20)
                                                        
                                                    }
                                                    Text("\(item.name)")
                                                    
                                                }
                                            })
                                        }
                                    }
                                }.padding()
                            }
                            
                        }
                        
                        
                        
                        
                        LazyVGrid(columns: columns, spacing: 20) {
                            
                            ForEach(plants, id:\.self){item in
                                
                                NavigationLink(destination: PlantDetail(name: item.name, description: item.description)){
                                    
                                    VStack{
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color(
                                                red: 175/255,
                                                green: 203/255,
                                                blue: 150/255,
                                                opacity: 1.0))
                                            .frame(width: 350, height: 130)
                                            .shadow(color: Color(
                                                red: 175/255,
                                                green: 203/255,
                                                blue: 150/255,
                                                opacity: 1.0), radius: 5, x:5, y: 10)
                                            .padding(15)
                                            .overlay(
                                                HStack {
                                                    Image(item.image)
                                                        .resizable()
                                                        .frame(width: 180, height: 190)
                                                        .padding()
                                                    Text(item.name)
                                                        .font(.title2)
                                                        .fontWeight(.bold)
                                                        .foregroundColor(Color(
                                                            red: 80/255,
                                                            green: 109/255,
                                                            blue: 54/255,
                                                            opacity: 1.0))
                                                }.padding(.horizontal)
                                            )
                                    }
                                    
                                }
                            }
                            
                        }
                        
                        
                        
                        
                    }.background(Color(
                        red: 248/255,
                        green: 248/255,
                        blue: 248/255,
                        opacity: 1.0))
                        .navigationBarHidden(true)
                }
                
                
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
