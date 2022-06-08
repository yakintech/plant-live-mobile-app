//
//  PlantScreen.swift
//  PlantLiveApp
//
//  Created by Alp Orkun Gungor on 4.06.2022.
//

import SwiftUI

struct PlantScreen: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    tabViewScreen()
                    Form {
                        Section {
                        } header: {
                            Text("Key Care Tips for Happy Plants").sectionHeaderStyle()
                                .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                        }
                        Section {
                            Text("“I can’t tell you how many times novice plant parents don’t feel the soil and make a watering mistake!  Only water when the soil dries out about 2” deep. Usually the surface will look dry, but deeper, it’s wet.  Also, note that if you blast your plant with more heat and more light, you will be watering more often. It’s about checking in with your plants every few days to see what’s up rather than setting a strict schedule.” ")
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                .listRowSeparator(.hidden)
                                .background(Color.white)
                                .padding()
                        } header: {
                            Text("Feel the Soil!").sectionHeaderStyle()
                        }
                        Section {
                            Text("“Just because a room looks bright to you, doesn’t mean that it’s bright to your plant. Remember, during the day, looking into buildings from the outside- the windows look black, right?  That’s because there’s not a lot of light indoors. Remember that rooms are like caves to plants, and light is food for plants.  Your plants ideally should be near windows. They are living things, and just because they will look good somewhere in the home doesn’t mean that you should put them there. They are not furniture.”   ")
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                .listRowSeparator(.hidden)
                                .background(Color.white)
                                .padding()
                        } header: {
                            Text("Give More Light!").sectionHeaderStyle()
                        }
                        Section {
                            Text("Light is food for plants, and the simplest thing to remember is generally the more light they get, the better they do. I also think it’s important to do a little research and ask questions when buying a plant. Too many people think that orchids and air plants are really difficult, when in-fact, they can be easy! They just need a different care regimen compared to potted plants. Think about the native environment of that plant to make that plant happy.")
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                .listRowSeparator(.hidden)
                                .background(Color.white)
                                .padding()
                        } header: {
                            Text("What are the most common mistakes you see people make when caring for houseplants and how to avoid them? ").sectionHeaderStyle()
                        }
                        Section {
                            Text("“Mother Nature is the ultimate designer. There are so many plant shapes, colors, growth forms, and sizes all on the market today that there is a plant for every decor, and every style. Always place plants by windows. If you need something green away from the window, try a painting of a plant, or a vase that makes you think of a plant.”")
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                .listRowSeparator(.hidden)
                                .background(Color.white)
                                .padding()
                        } header: {
                            Text("Any tips for using plants as a design element in your home?").sectionHeaderStyle()
                        }
                        Section {
                            Text("“If you are doting and tend to interact with your plants a lot, then ferns are good for you. If you are forgetful or travel a lot, try succulents or cacti.”")
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                .listRowSeparator(.hidden)
                                .background(Color.white)
                                .padding()
                        } header: {
                            Text("What plants are best for beginners? ").sectionHeaderStyle()
                        }
                        Section {
                            Text("“Marimo moss balls and ZZ plants tend to do the best under artificial light, which is in most offices. Other aroids like pothos and peace lilies can tolerate the office lighting, but again, keep in mind that office lighting is generally not ideal for any plant. It’s just not as intense as sunlight.”")
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                .listRowSeparator(.hidden)
                                .background(Color.white)
                                .padding()
                        } header: {
                            Text("What types make the best office companions?").sectionHeaderStyle()
                        }
                    }
                    .navigationBarTitle(Text("Plant Tips"), displayMode: .inline)
                }
            }
        }
    }
    struct PlantScreen_Previews: PreviewProvider {
        static var previews: some View {
            PlantScreen()
        }
    }
}
public extension Text {
    func sectionHeaderStyle() -> some View {
        self
            .font(.system(.title3))
            .fontWeight(.semibold)
            .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
            .textCase(nil)
    }
}
