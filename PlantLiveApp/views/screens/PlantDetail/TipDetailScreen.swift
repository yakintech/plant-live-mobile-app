//
//  TipDetailScreen.swift
//  PlantLiveApp
//
//  Created by Alp Orkun Gungor on 3.07.2022.
//

import SwiftUI
import Alamofire

struct TipDetailScreen: View {
    
    var _id : String
    @State var tips : TipModel = TipModel()
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    Form {
                        Section {
                            Text(tips.description)
                                .font(.system(size: 18))
                                .fontWeight(.thin)
                                .foregroundColor(Color(red: 0.21, green: 0.35, blue: 0.07))
                                .listRowSeparator(.hidden)
                                .background(Color.white)
                                .padding()
                        } header: {
                            Text("SOME TIPS 🎯")
                                .font(.system(size: 18))
                                .fontWeight(.thin)
                                .foregroundColor(Color(red: 0.21, green: 0.35, blue: 0.07))
                                .listRowSeparator(.hidden)
                                .padding(5)
                        }
                    }
                }
            }
        }
        .navigationBarTitle(tips.name)
        .safeAreaInset(edge: .top) {
            SlidingView()
        }
        .listRowSeparator(.hidden)
        .onAppear(){
            print("ID", _id)
            let request = AF.request("https://plankton-app-jr8ee.ondigitalocean.app/api/tips/\(_id)")
            request.responseDecodable(of: TipModel.self){response in
                tips = response.value ?? TipModel()
                //            let request = AF.request("https://plankton-app-jr8ee.ondigitalocean.app/api/tips/\(_id)")
                //            request.responseDecodable(of: TipModel.self){response in
                //                tips = response.value ?? TipModel()
            }
        }
    }
    
}
