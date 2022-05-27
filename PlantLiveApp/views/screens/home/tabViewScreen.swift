//
//  tabViewScreen.swift
//  PlantLiveApp
//
//  Created by Zeliha Uslu on 27.05.2022.
//

import SwiftUI

struct tabViewScreen: View {
    var body: some View {
        VStack {
            TabView{
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(
                        red: 104/255,
                        green: 141/255,
                        blue: 70/255,
                        opacity: 1.0))
                    .frame(width: 350, height: 130)
                    .overlay(
                        ZStack {
                            Image("partiliyoruz")
                                .resizable()
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
    }
}

struct tabViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        tabViewScreen()
    }
}
