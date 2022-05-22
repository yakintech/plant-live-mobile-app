//
//  header.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 22.05.2022.
//

import SwiftUI

struct Header: View {
    
    @State var search : String = ""
    @State var selectedTab : Int = 0
    
    
    var body: some View {
        HStack {
            
            Image(systemName: "magnifyingglass")
                .font(.title2)
                .foregroundColor(Color(
                    red: 104/255,
                    green: 141/255,
                    blue: 70/255,
                    opacity: 1.0))
            
            
            VStack {
                TextField("Search", text: $search)
                Rectangle()
                    .frame(width: 280, height: 0.7, alignment: .bottom)
                    .foregroundColor(Color(
                        red: 104/255,
                        green: 141/255,
                        blue: 70/255,
                        opacity: 1.0))
                
            }
            
            
            Spacer()
            
            Button(action: {
                selectedTab = 2
            }, label: {
                Image("jackHarlow")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 35, height: 35)
            })
            
            
        }.padding()
        
        
    }
}

