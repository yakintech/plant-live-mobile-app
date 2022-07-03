//
//  TipScreen.swift
//  PlantLiveApp
//
//  Created by Alp Orkun Gungor on 3.07.2022.
//

import SwiftUI

struct TipScreen: View {
    
    @State var TipList : [TipModel] = []
    
    var body: some View {
        VStack{
            ForEach(TipList, id:\.self){item in Text(item.name)
            }
        }.onAppear(){
            
            let tipRepository = TipRepository()
            tipRepository.getAllTips(){data in
                TipList = data
            }
            
        }
    }
}

struct TipScreen_Previews: PreviewProvider {
    static var previews: some View {
        TipScreen()
    }
}
