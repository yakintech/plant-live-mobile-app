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
    
    
    var selectedModel : PlantsList
    var body: some View {
        Text("hello")
//        NavigationView{
//            LazyVGrid(columns: columns, spacing: 20) {
//                ForEach(selectedModel, id:\.self){item in
//                    NavigationLink(destination: PlantDetail(name: item.name, description: item.description)) {
//
//                    }
//                }
//            }
//        }
    }
}

//struct CategoryDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryDetailView()
//    }
//}
