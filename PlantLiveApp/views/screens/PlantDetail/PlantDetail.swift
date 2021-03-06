//
//  NewPlantDetail.swift
//  PlantLiveApp
//
//  Created by Emiralp Duman on 5.06.2022.
//

import SwiftUI
import CoreLocation

struct PlantDetail: View {
    
    let id: String
    
    @State var plant: Plant = Plant()
    @State var plantDetailOthersImage = false
    
    var body: some View {
        NavigationView{
            GeometryReader { geometry in
                VStack {
                    VStack {
                        MapView(coordinates: CLLocationCoordinate2D(latitude: Double(plant.latitude) ?? 41.024447, longitude: Double(plant.longitude) ?? 28.976778))
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
                        Button(action: {
                            self.plantDetailOthersImage.toggle()
                        }, label: {
                            CircleImage(imageName: plant.img).frame(width: 210, height: 210)
                        }).offset(y: -100)
                            .padding(.bottom, -130)
                            .sheet(isPresented: self.$plantDetailOthersImage, content: {PlantDetailBigImage(imageName: plant.img)})
                        
                    }
                    .frame(height: geometry.size.height / 2)

                    VStack(alignment: .leading) {
                        Text(plant.name)
                            .font(Font.custom(Settings.fontName, size: Settings.sizeforTitleFonts))
                        HStack {
                            Text(plant.countryOfOrigin)
                            Spacer()

                        }
                        .font(Font.custom(Settings.fontName, size: Settings.sizeforSubheadlineFonts))
                        .foregroundColor(.secondary)

                        Divider()
                        Text("About \(plant.name)")
                            .font(Font.custom(Settings.fontName, size: Settings.sizeforTitle2Fonts))
                        ScrollView {
                            Text(plant.description)
                                .font(Font.custom(Settings.fontName, size: Settings.sizeforBodyFonts))
                        }
                    }
                    .padding()
                    Spacer()
                }.navigationBarItems(trailing:
                                        HStack{
                    Spacer()
                    Button(action: {
                        
                    } ,label: {
                        Image(systemName: "heart")
                            .padding()
                    })
                                            
                                            
                                        }.foregroundColor(.white)
                                            .frame(width: 375, height: 10)
                                            .padding())
                .onAppear() {
                    let repo = PlantRepository()
                    repo.getByID(id) { response in
                        self.plant = response
                    }
                }
            }
        }
    }
    
    private struct Settings {
        static let fontName: String = "Chalkduster"
        static let sizeforBodyFonts: CGFloat = 17
        static let sizeforTitleFonts: CGFloat = 28
        static let sizeforTitle2Fonts: CGFloat = 22
        static let sizeforSubheadlineFonts: CGFloat = 15

    }
}

struct NewPlantDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetail(id: "62af65157027470e84cf01ce")
//            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
//            .previewDisplayName("iPhone 13 Pro")
//        PlantDetail(forId: "629c81407cf041db9ca231d0")
//            .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
//            .previewDisplayName("iPhone 13")
//        PlantDetail(forId: "629c81407cf041db9ca231d0")
//            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
//            .previewDisplayName("iPhone 13 Pro Max")
//        PlantDetail(forId: "629c81407cf041db9ca231d0")
//            .previewDevice(PreviewDevice(rawValue: "iPhone 13 mini"))
//            .previewDisplayName("iPhone 13 mini")
    }
}
