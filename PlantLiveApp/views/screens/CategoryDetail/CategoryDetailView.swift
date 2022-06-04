//
//  CategoryDetailView.swift
//  PlantLiveApp
//
//  Created by Zeliha Uslu on 4.06.2022.
//

import SwiftUI

struct CategoryDetailView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State private var dongu : [String] = [
    "hello1","hello2","hello3","hello4","hello5","hello6","hello7","hello8","hello9","hello10"
    ]
    var body: some View {
        
        NavigationView{
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(dongu, id:\.self){item in
                    Text("\(item)")
                }
            }
        }
    }
}

struct CategoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailView()
    }
}
