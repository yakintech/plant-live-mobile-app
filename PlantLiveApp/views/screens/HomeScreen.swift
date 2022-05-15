//
//  HomeScreen.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 15.05.2022.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        
        VStack{

            NavigationLink(destination: PlantListScreen()){
                
                Text("Bitki Listesine Git!")
                
            }
            .padding()
            
        
            
            
            
            //            NavigationLink(destination: AboutScreen()) {
            //                Text("go to about screen")
            //            }
            //            Text("Plant Live Home Screen")
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
