//
//  Category.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 15.05.2022.


import Foundation

struct Category:  Codable, Hashable {
  var id: Int = 0
  var name: String = ""
  var description: String = ""
  var plants: [PlantsList]
}

