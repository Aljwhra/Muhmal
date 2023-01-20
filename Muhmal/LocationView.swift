//
//  LocationView.swift
//  Muhmal
//
//  Created by Sarah Sheikh on 11/12/2022.
//
import MapKit
import SwiftUI

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

    struct LocationView: View {
        @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.59, longitude: 46.70), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
        
        let locations = [
            Location(name: "بلاستيك", coordinate: CLLocationCoordinate2D(latitude: 24.59, longitude: 46.50)),
            Location(name: "ورق", coordinate: CLLocationCoordinate2D(latitude: 24.50, longitude: 46.70)),
            Location(name: "أثاث", coordinate: CLLocationCoordinate2D(latitude: 24.70, longitude: 46.60)),
            Location(name: "مخلفات طبية", coordinate: CLLocationCoordinate2D(latitude: 24.40, longitude: 46.80)),
            Location(name: "ورق", coordinate: CLLocationCoordinate2D(latitude: 24.90, longitude: 46.79)),
        ]

    
    
    var body: some View {
        Map(coordinateRegion: $mapRegion, annotationItems: locations) {
            location in MapMarker(coordinate: location.coordinate)
        }
        
//        ZStack{
//            VStack {
//                Text("مواقع النفايات ")
//                    .font(Font.custom("Tajawal-Bold", size: 20))
//                    .padding()
//            }
//            .padding(.bottom, 520)
//            .padding(.leading, 220)
//
//            HStack{
//                Image("بلاستيك")
//                    .resizable()
//                    .frame(width:50 ,height: 50)
//                    .padding(.leading, 270)
//            }
//            }
        }
    }

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
