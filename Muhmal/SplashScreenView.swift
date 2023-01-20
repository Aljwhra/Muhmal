//
//  SplashScreenView.swift
//  Muhmal
//
//  Created by Aljwhra Alnasser on 25/05/1444 AH.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    
    var body: some View {
        
        if isActive{
            OnboardingView()
        }else {
           
            VStack{
                VStack{
                   Image("logo")
                        .resizable()
                        //.fixedSize()
                        .frame(width:140, height: 140)
                       Text("مُهمل")
                        .font(Font.custom("Tajawal-Bold",size: 30))
                        .foregroundColor(.black.opacity(0.80))
                        
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
            
        }
        
        
        
     
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
