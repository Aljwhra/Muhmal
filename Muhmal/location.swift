//
//  location.swift
//  Muhmal
//


//  Created by amalghurm on 24/05/1444 AH.


import SwiftUI

struct location: View {
    var body: some View {
        MapViewRepresentable()
        . ignoresSafeArea()
    }
}

struct location_Previews: PreviewProvider {
    static var previews: some View {
        location()
    }
}
