//
//  locationmanger.swift
//  Muhmal

//

//  Created by amalghurm on 24/05/1444 AH.
//

import CoreLocation
class LocationManager: NSObject,ObservableObject{
    
    private let locationManager = CLLocationManager ()
    
   override init(){
       super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:
                         [CLLocation]) {
        
        guard !locations.isEmpty else { return }
        print (locations.first)
        locationManager.stopUpdatingLocation ( )
        
    }
}
