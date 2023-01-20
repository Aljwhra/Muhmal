//
//  MuhmalApp.swift
//  Muhmal
//
//  Created by Aljwhra Alnasser on 20/05/1444 AH.
//

import SwiftUI
import CloudKit


@main
struct MuhmalApp: App {
    
    let container = CKContainer(identifier: "iCloud.com.Aljwhra.Muhmal")
    
    
    
    var body: some Scene {
        WindowGroup {
           // ContentView()
           // Home()
           // OnboardingView()
           SplashScreenView()
           // testing()
          //  information(vm: ItemsListViewModel(container: container))
            
        }
    }
}




