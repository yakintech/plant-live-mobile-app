//
//  PlantScreen.swift
//  PlantLiveApp
//
//  Created by Alp Orkun Gungor on 4.06.2022.
//

import SwiftUI

struct PlantScreen: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
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
                                        Text("Plant Tips!")
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
                    Form {
                        Section {
                        } header: {
                            Text("Key Care Tips for Happy Plants").sectionHeaderStyle()
                                .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                        }
                        Section {
                            Text("Cutting off the browned bits off your leaves is a great way to tidy up. Follow the natural leaf shape, if the leaf shape comes to a point, don’t cut it back straight across.  It just won’t look natural, and defeats the tidying up you were trying to do.")
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                .listRowSeparator(.hidden)
                                .background(Color.white)
                                .padding()
                        } header: {
                            Text("Prune your plants!").sectionHeaderStyle()
                        }
                    }
                    .navigationBarTitle(Text("Plant Tips"), displayMode: .inline)
                }
            }
        }
    }
    struct PlantScreen_Previews: PreviewProvider {
        static var previews: some View {
            PlantScreen()
        }
    }
}
public extension Text {
    func sectionHeaderStyle() -> some View {
        self
            .font(.system(.title3))
            .fontWeight(.semibold)
            .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
            .textCase(nil)
    }
}
