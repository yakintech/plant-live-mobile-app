//
//  AddCategory.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 21.05.2022.
//

import SwiftUI

struct AddCategory: View {
    
    @State var categoryName : String = ""
    @State var description : String = ""
    
    var body: some View {
        VStack{
            TextField("Name",
                      text: $categoryName
            ).padding()
            
            TextField("Description",
                      text: $description
            ).padding()
            
            Button("Add"){
                
                
                let url = URL(string: "https://northwind.vercel.app/api/categories")!
                
                
                var request = URLRequest(url: url)
                request.httpMethod = "POST"
                
                let postString = "name=\(categoryName)&description=\(description)"
                
                
                request.httpBody = postString.data(using: .utf8)
                
                
                URLSession.shared.dataTask(with: request){(data, response, error) in
                    
                    print("Yeni kategori başarıyla eklendi!!")
                    
                }.resume()
                
                
            }
        }
    }
}

struct AddCategory_Previews: PreviewProvider {
    static var previews: some View {
        AddCategory()
    }
}
