//
//  MapView.swift
//  LandmarksApp
//
//  Created by Vin on 12/03/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 41.7149444, longitude: -124.1441389))
}
