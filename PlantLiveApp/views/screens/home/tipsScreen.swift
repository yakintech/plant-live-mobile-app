//
//  tipsScreen.swift
//  PlantLiveApp
//
//  Created by Zeliha Uslu on 27.05.2022.
//

import SwiftUI

struct tipsScreen: View {
    
    @Binding var tip : [tipType]
    
    let columns = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
                ScrollView(.horizontal, showsIndicators: false) {
                    
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
}

