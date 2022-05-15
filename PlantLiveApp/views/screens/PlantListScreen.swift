//
//  PlantListScreen.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 15.05.2022.
//

import SwiftUI

struct PlantListScreen: View {
    

    
    var plants : [Plant] = [
        Plant(name: "Deve Tabanı", description: "Çok severiz"),
        Plant(name: "Peygamber Kılıcı", description: "Çok yaşar"),
        Plant(name: "Benjamin", description: "Bejamin Button")
    ]
    
    
    var body: some View {
        

        ForEach(plants, id:\.self){item in
            
            NavigationLink(destination: PlantDetail(name: item.name, description: item.description)){
                
                Text(item.name)
                
            }
        }
        
    }
}

struct PlantListScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlantListScreen()
    }
}
