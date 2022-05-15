//
//  ContentView.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 14.05.2022.
//

import SwiftUI

struct ContentView: View {
    //Çağatay
    var body: some View {
        NavigationView{
            
            HomeScreen()
                .navigationTitle("Main Page")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
