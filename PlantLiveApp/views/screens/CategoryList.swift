//
//  CategoryList.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 21.05.2022.
//

import SwiftUI

struct CategoryList: View {
    
    @State var categories : [Category] = []
    
    
    var body: some View {
        
        VStack{
            ForEach(categories, id:\.self){item in
                
                Text(item.name)
            }

        }.onAppear(){
            
            let url = URL(string: "https://northwind.vercel.app/api/categories")!
            
            
            URLSession.shared.dataTask(with: url){(data, response, error) in
                
                do{
                    
                    if let categoryList = data{
                        
                        let decodeData = try JSONDecoder().decode([Category].self , from: categoryList)
                        
                        categories = decodeData
                        
//                        DispatchQueue.main.async {
//                            categories = decodeData
//                        }
                     
                    }
                }
                catch{
                    print("Category Error!!")
                }
            }.resume()
            
            
        }
    }
}
