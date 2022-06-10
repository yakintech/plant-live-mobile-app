//
//  Plant.swift
//  PlantLiveApp
//
//  Created by Çağatay Yıldız on 15.05.2022.
//

import Foundation


struct Plant : Hashable, Decodable {
    
    var _id: String = "629c81407cf041db9ca231d0"
    var name: String = "Plant's name"
    var description: String = "Ofis ve ev ortamlarında rahat bir şekilde yetiştirilecek yemyeşil bir bitki olan bu çiçek; uzun ömürlü bir çiçek olmakla beraber çok dayanıklıdır. Güzel ve geniş yaprakları bulunur. Deve tabanı çiçeğinin bakımı çok basittir. Hava kalitesini de olumlu bir şekilde arttırdığından ofis ve evlerde çok sık tercih edilir. Yapraklarının şekli büyük kalp şeklinde olup parçalı yapraklara sahiptir."
    var img: String = "devetabani"
    var longitude: String = "28.976778"
    var latitude: String = "41.024447"
    var categoryId: String = "Plant's categoryId"
    var countryOfOrigin: String = "Plant's origin"
    
}


