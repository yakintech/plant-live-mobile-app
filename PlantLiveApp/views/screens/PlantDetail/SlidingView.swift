//
//  SlidingView.swift
//  PlantLiveApp
//
//  Created by Alp Orkun Gungor on 3.07.2022.
//

import SwiftUI

struct SlidingView: View {
    
    @State private var showThing = false
    
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(
                    red: 144/255,
                    green: 181/255,
                    blue: 110/255,
                    opacity: 1.0))
                .frame(width: 350, height: 130)
                .overlay(
                    ZStack {
                        Image("care-plant")
                            .resizable()
                            .frame(width: 350, height: 130)
                            .cornerRadius(20)
                        Text("Skip fertilization for houseplants if you’re unsure!")
                            .font(Font.system(size: 16).italic())
                            .foregroundColor(Color(
                                red: 104/255,
                                green: 141/255,
                                blue: 70/255,
                                opacity: 1.0))
                            .padding()
                            .padding(.horizontal)
                            .background(Color.white.opacity(0.8))
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
                        Image("water-plant")
                            .resizable()
                            .frame(width: 350, height: 130)
                            .cornerRadius(20)
                        Text("Feel the soil to know how often to water your plants!")
                            .font(Font.system(size: 16).italic())
                            .foregroundColor(Color(
                                red: 104/255,
                                green: 141/255,
                                blue: 70/255,
                                opacity: 1.0))
                            .padding()
                            .background(Color.white.opacity(0.8))
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
                        Image("cactuses")
                            .resizable()
                            .frame(width: 350, height: 130)
                            .cornerRadius(20)
                        Text("It’s better to underwater your plants than overwater them!")
                            .font(Font.system(size: 16).italic())
                            .foregroundColor(Color(
                                red: 104/255,
                                green: 141/255,
                                blue: 70/255,
                                opacity: 1.0))
                            .padding()
                            .background(Color.white.opacity(0.8))
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
                        Image("water-plant-2")
                            .resizable()
                            .frame(width: 350, height: 130)
                            .cornerRadius(20)
                        Text("Make sure pots have drainage holes!")
                            .font(Font.system(size: 16).italic())
                            .foregroundColor(Color(
                                red: 104/255,
                                green: 141/255,
                                blue: 70/255,
                                opacity: 1.0))
                            .padding()
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(20)
                    }.padding(40)
                )
                .padding()
        }
        .tabViewStyle(.page).frame(width: 350, height: 130)
        .animation(.spring(response: 1.5), value: showThing)
        .transition(.slide)
    }
}
struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        SlidingView()
    }
}
