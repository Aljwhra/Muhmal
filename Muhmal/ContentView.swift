//
//  ContentView.swift
//  Muhmal
//
//  Created by Aljwhra Alnasser on 20/05/1444 AH.
//


import SwiftUI
import PhotosUI
struct ContentView: View {
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImageData: Data? = nil
    @State private var isPresentedFull = false

    
        var body: some View {
      
                PhotosPicker(
                    selection: $selectedItem,
                    matching: .images,
                    photoLibrary: .shared()) {
                        Image(systemName: "camera.fill").resizable()
                            .frame(width: 36.0, height: 29.0)
                            .padding(.trailing,270)
                            .padding(.top,200)
                            .foregroundColor(Color(red: 0.153, green: 0.732, blue: 0.675))

                        
                    }
                    .onChange(of: selectedItem) { newItem in
                        Task {
                            //isPresentedFull.toggle()
                                

                            
                            // Retrieve selected asset in the form of Data
                            if let data = try? await newItem?.loadTransferable(type: Data.self) {
                                selectedImageData = data
                                
                            }
                        }
                    }//.fullScreenCover(isPresented:$isPresentedFull){ContentView()}
                
                if let selectedImageData,
                   let uiImage = UIImage(data: selectedImageData) {
                    
                    Image(uiImage: uiImage)
                        .resizable()
                        
                        .frame(width: 100, height: 100)
                        .padding(.top,-30)
                        .padding(.bottom,-20)
                        .padding(.leading,-300)
                }
            }
        }
