//
//  categoryScreen.swift
//  PlantLiveApp
//
//  Created by Zeliha Uslu on 27.05.2022.
//

import SwiftUI

struct categoryScreen: View {
    
    
    let columns = [
        GridItem(.flexible())
    ]
    
    @State var selectedModel : PlantsList? = nil
    @Binding var plants : [Plant]
    @State var plantList = [PlantsList]()
    
    var body: some View {
        VStack {
            LazyVGrid(columns: columns, spacing: 20) {
                
                ForEach(plants, id:\.self){item in
                    
    //                NavigationLink(destination: CategoryDetailView()){
                    Button(action: {
                        selectedModel = PlantsList(name: item.name, description: item.description)
                    }, label: {
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
                                    opacity: 1.0), radius: 14, x:0, y: 0)
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
                                    }
                                )
                        }
                    })
                }
            }
        }.sheet(item: $selectedModel) { model in
            CategoryDetailView(selectedModel: model)
        }
    }
}

