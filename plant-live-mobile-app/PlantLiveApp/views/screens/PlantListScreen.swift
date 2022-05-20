//
//  PlantListScreen.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 15.05.2022.
//

import SwiftUI

struct PlantListScreen: View {
    
    
    
    var plants : [Plant] = [
        Plant(name: "Deve Tabanı", description: "Deve tabanı çiçeği; karakteristik ve belirgin kesiklere sahip olan yapraklarının uzunluğu 40 ile 60 santimetre aralığındadır. Yaklaşık olarak 30 santimetre tek gövdesi üzerinde birkaç tane delikli formda yaprakları bulunur. İdeal ortam bulunduğu zaman uzunluğu 5 metreye dek ulaşabilir.Deve tabanı çiçeği; karakteristik ve belirgin kesiklere sahip olan yapraklarının uzunluğu 40 ile 60 santimetre aralığındadır. Yaklaşık olarak 30 santimetre tek gövdesi üzerinde birkaç tane delikli formda yaprakları bulunur. İdeal ortam bulunduğu zaman uzunluğu 5 metreye dek ulaşabilir.Deve tabanı çiçeği; karakteristik ve belirgin kesiklere sahip olan yapraklarının uzunluğu 40 ile 60 santimetre aralığındadır. Yaklaşık olarak 30 santimetre tek gövdesi üzerinde birkaç tane delikli formda yaprakları bulunur. İdeal ortam bulunduğu zaman uzunluğu 5 metreye dek ulaşabilir.Deve tabanı çiçeği; karakteristik ve belirgin kesiklere sahip olan yapraklarının uzunluğu 40 ile 60 santimetre aralığındadır. Yaklaşık olarak 30 santimetre tek gövdesi üzerinde birkaç tane delikli formda yaprakları bulunur. İdeal ortam bulunduğu zaman uzunluğu 5 metreye dek ulaşabilir.Deve tabanı çiçeği; karakteristik ve belirgin kesiklere sahip olan yapraklarının uzunluğu 40 ile 60 santimetre aralığındadır. Yaklaşık olarak 30 santimetre tek gövdesi üzerinde birkaç tane delikli formda yaprakları bulunur. İdeal ortam bulunduğu zaman uzunluğu 5 metreye dek ulaşabilir.Deve tabanı çiçeği; karakteristik ve belirgin kesiklere sahip olan yapraklarının uzunluğu 40 ile 60 santimetre aralığındadır. Yaklaşık olarak 30 santimetre tek gövdesi üzerinde birkaç tane delikli formda yaprakları bulunur. İdeal ortam bulunduğu zaman uzunluğu 5 metreye dek ulaşabilir.Deve tabanı çiçeği; karakteristik ve belirgin kesiklere sahip olan yapraklarının uzunluğu 40 ile 60 santimetre aralığındadır. Yaklaşık olarak 30 santimetre tek gövdesi üzerinde birkaç tane delikli formda yaprakları bulunur. İdeal ortam bulunduğu zaman uzunluğu 5 metreye dek ulaşabilir.", image: "devetabani"),
        Plant(name: "Peygamber Kılıcı", description: "Çok yaşar", image: "devetabani"),
        Plant(name: "Benjamin", description: "Bejamin Button", image: "devetabani"),
        Plant(name: "Kaktüs", description: "Su istemez", image: "devetabani"),
        Plant(name: "Orkide", description: "çok pahalı...", image: "devetabani")
    ]
    
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        
        NavigationView{
            LazyVGrid(columns: columns, spacing: 20) {
                
                ForEach(plants, id:\.self){item in
                    
                    NavigationLink(destination: PlantDetail(name: item.name, description: item.description)){
                        
                        VStack{
                            Image(item.image)
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                            Text(item.name)
                            
                           
                        }
                        
                   }
                }
                
            }
            .navigationTitle("Plant List")
            
        }
        
     
        
    }
}

struct PlantListScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlantListScreen()
    }
}
