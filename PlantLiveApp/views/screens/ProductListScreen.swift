//
//  ProductListScreen.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 22.05.2022.
//

import SwiftUI
import Alamofire

struct ProductListScreen: View {
    
    @State var products : [Product] = []
    
    
    var body: some View {
        VStack{
            ScrollView{
                ForEach(products, id:\.self){item in
                    
                    Text(item.name)
                }
            }
           
        }
        .onAppear(){
            
            let request = AF.request("https://northwind.vercel.app/api/products")
            
            request.responseDecodable(of: [Product].self){ response in
                products = response.value!
            }
        }
    }
}

struct ProductListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductListScreen()
    }
}
