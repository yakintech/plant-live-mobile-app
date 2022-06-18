//
//  NewPlantDetail.swift
//  PlantLiveApp
//
//  Created by Emiralp Duman on 5.06.2022.
//

import SwiftUI

struct PlantDetail: View {
    init(forId plantId: String) {
        plant = PlantVM(plantId)
    }
        
    @ObservedObject private var plant: PlantVM
    @State var plantDetailOthersImage = false
    var body: some View {
        GeometryReader { geometry in
            VStack {
                VStack {
                    MapView(coordinates: plant.coordinates)
                        .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                    Button(action: {
                        self.plantDetailOthersImage.toggle()
                    }, label: {
                        CircleImage(imageName: plant.imageName)
                    }).offset(y: -130)
                        .padding(.bottom, -130)
                        .sheet(isPresented: self.$plantDetailOthersImage, content: {PlantDetailBigImage(imageName: plant.imageName)})
                    
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
                    Text(plant.description)
                        .font(Font.custom(Settings.fontName, size: Settings.sizeforBodyFonts))
                }
                .padding()
                Spacer()
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
        PlantDetail(forId: "629c81407cf041db9ca231d0")
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
            .previewDisplayName("iPhone 13 Pro")
        PlantDetail(forId: "629c81407cf041db9ca231d0")
            .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
            .previewDisplayName("iPhone 13")
        PlantDetail(forId: "629c81407cf041db9ca231d0")
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
            .previewDisplayName("iPhone 13 Pro Max")
        PlantDetail(forId: "629c81407cf041db9ca231d0")
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 mini"))
            .previewDisplayName("iPhone 13 mini")
    }
}
