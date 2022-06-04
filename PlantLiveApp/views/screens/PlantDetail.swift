//
//  PlantDetail.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 15.05.2022.
//

import SwiftUI

struct PlantDetail: View {
    
    var name : String
    var description : String
    let cornerRadiusDefault: CGFloat = 20
    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.41, green: 0.55, blue: 0.27), .white]),
                               startPoint: .topLeading,
                               endPoint: .bottomLeading)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack{
                        Text(name)
                            .padding()
                            .foregroundColor(Color.white)
                            .font(.system(size: 30, weight: .regular , design: .rounded))
                            .opacity(0.8)
                            .shadow(radius: 20)
                            .cornerRadius(cornerRadiusDefault)
                            .frame(width: 300, height: 50, alignment: .center)
                        Image("devetabani")
                            .resizable()
                            .opacity(0.8)
                            .frame(width: 375, height: 375, alignment: .center)
                            .cornerRadius(cornerRadiusDefault)
                            .shadow(radius: 20)
                    }
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                VStack{
                                    Image(systemName: "sun.max")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                    Text("Full Sun")
                                        .opacity(0.7)
                                }.frame(width: 85, height: 85)
                                .background(.white)
                                .cornerRadius(15)
                                VStack{
                                    Image(systemName: "drop")
                                        .resizable()
                                        .frame(width: 20, height: 30)
                                        .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                    Text("Drained")
                                        .opacity(0.7)
                                }.frame(width: 85, height: 85)
                                .background(.white)
                                .cornerRadius(15)
                                VStack{
                                    Image(systemName: "ruler")
                                        .resizable()
                                        .frame(width: 50, height: 30)
                                        .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                    Text("30 x 50")
                                        .opacity(0.7)
                                }.frame(width: 85, height: 85)
                                .background(.white)
                                .cornerRadius(15)
                                VStack{
                                    Image(systemName: "thermometer")
                                        .resizable()
                                        .frame(width: 20, height: 30)
                                        .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                    Text("14° - 30°")
                                        .opacity(0.7)
                                }.frame(width: 85, height: 85)
                                .background(.white)
                                .cornerRadius(15)
                                VStack{
                                    Image(systemName: "globe.europe.africa")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                    Text("Türkiye")
                                        .opacity(0.7)
                                }.frame(width: 85, height: 85)
                                .background(.white)
                                .cornerRadius(15)
                            }
                        }.shadow(radius: 20)
                            .frame(width: 375, height: 30, alignment: .center)
                            .padding()
                            .opacity(0.8)
                        
                        ScrollView(.vertical){
                            VStack{
                                Text("\(description)")
                                    .padding()
                                    .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                    .font(.system(size: 20, weight: .regular , design: .rounded))
                            }
                        }.frame(width: 400, height: 250, alignment: .center)
                            .padding(.bottom, 50)
                        
                    
                            
                    }.padding()
                    Spacer()
                }
            }
        }.navigationBarItems(trailing:
                                    HStack{
                                        Spacer()
                                        Image(systemName: "heart")
                                            .padding()
            Button(action: actionSheet) {
                            Image(systemName: "square.and.arrow.up")
                    .padding(.trailing)
                        }
                                    }.foregroundColor(.white)
                                        .frame(width: 375, height: 10)
                                        .padding())
        
    }
    func actionSheet() {
            guard let urlShare = URL(string: "https://developer.apple.com/xcode/swiftui/") else { return }
            let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
            UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
        }
}

struct PlantDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetail(name: "Deve Tabani" , description: "Deve tabanı çiçeği; karakteristik ve belirgin kesiklere sahip olan yapraklarının uzunluğu 40 ile 60 santimetre aralığındadır. Yaklaşık olarak 30 santimetre tek gövdesi üzerinde birkaç tane delikli formda yaprakları bulunur. İdeal ortam bulunduğu zaman uzunluğu 5 metreye dek ulaşabilir.")
    }
}
