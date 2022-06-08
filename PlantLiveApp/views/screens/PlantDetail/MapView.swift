//
//  MapView.swift
//  PlantLiveApp
//
//  Created by Emiralp Duman on 8.06.2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region: MKCoordinateRegion
    
    init (coordinates: CLLocationCoordinate2D) {
        self.region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: CLLocationCoordinate2D(latitude: 41.024447, longitude: 28.976778))
    }
}
