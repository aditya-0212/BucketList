//
//  LocationMapView.swift
//  BucketList
//
//  Created by APPLE on 21/08/24.
//
import MapKit
import SwiftUI

struct LocationFirst: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}
struct LocationMapView: View {
    let locations = [
        LocationFirst(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141)),
        LocationFirst(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076))
    ]
    var body: some View {
        VStack{
//            Map {
//                ForEach(locations) { location in
////                    Marker(location.name, coordinate: location.coordinate)
//                    Annotation(location.name, coordinate: location.coordinate) {
//                        Text(location.name)
//                            .font(.headline)
//                            .padding()
//                            .background(.blue)
//                            .foregroundStyle(.white)
//                            .clipShape(.capsule)
//                    }
//                    .annotationTitles(.hidden)
//                }
//            }
            MapReader { proxy in
                Map()
                    .onTapGesture { position in
                        print(position)
                        if let coordinate = proxy.convert(position, from: .local) {
                            print(coordinate)
                        }
                    }
            }
        }
    }
}

#Preview {
    LocationMapView()
}
