//
//  tabView.swift
//  plantList
//
//  Created by Zeliha Uslu on 18.05.2022.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        TabView{
                    
                    
                  
                    Image(systemName: "person.fill")
                        .tabItem {
                            Image(systemName: "leaf.arrow.triangle.circlepath")
                            Text("Plant")
                        }
                    Text("Alarm")
                        .tabItem {
                            Image(systemName: "alarm")
                            Text("Alarm")
                        }
                    
                    
                    Text("Profile")
                        .tabItem {
                            Image(systemName: "brain.head.profile")
                            Text("Profile")
                        }
                }
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
