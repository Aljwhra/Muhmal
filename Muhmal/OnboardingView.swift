//
//  OnboardingView.swift
//  Muhmal
//

//  Created by Sumaya Alzahrani on 17/05/1444 AH.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var isPrsnt = false
    
    var body: some View {
        
        
        
        TabView {
            
            
            VStack{
                VStack{
                    
                    Button("تخطي") {
                        isPrsnt = true
                    }
                    .padding(.leading, 280.0)
                    .foregroundColor(Color("Color"))
                    .bold()
                    .font(Font.custom("Tajawal-Bold", size: 18))
                    .fullScreenCover(isPresented: $isPrsnt){
                        
                        Home()
                    }
                    
                    
                }
                
                Image("a")
                
                    .resizable()
                    .frame(width: 320, height: 450)
                    .padding(.bottom, 20)
                
                Text("اقسام متنوعة")
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                    .font(Font.custom("Tajawal-Bold", size: 20))
                
                
                Text("تستطيع اختيار نوع نفاياتك من ضمن اكثر من خمسة انواع مختلفة من المخلفات القابلة لاعادة التدوير")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(Font.custom("Tajawal-Regular", size: 18))
                    .frame(width: 400, height: 100)
                    .lineSpacing(6)
                
                
            }
            
            .padding(.bottom, 50)
            
            
            
            VStack{
                
                VStack{
                    
                    Button("تخطي") {
                        isPrsnt = true
                    }
                    .padding(.leading, 280.0)
                    .foregroundColor(Color("Color"))
                    .bold()
                    .font(Font.custom("Tajawal-Bold", size: 18))
                    .fullScreenCover(isPresented: $isPrsnt){
                        
                        Home()
                    }
                    
                }
                
                Image("b")
                
                    .resizable()
                    .frame(width: 320, height: 450)
                    .padding(.bottom, 20)
                
                Text("اكتشف اقرب موقع لك")
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                    .font(Font.custom("Tajawal-Bold", size: 20))
                
                Text("تستطيع مشاهدة اقرب مواقع النفايات المختلفة اليك عن طريق الخريطة")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(Font.custom("Tajawal-Regular", size: 18))
                    .frame(width: 400, height: 100)
                    .lineSpacing(6)
                
                
            }
            
            .padding(.bottom, 50)
            
            VStack{
                
                
                Image("c")
                
                    .resizable()
                    .frame(width: 320, height: 450)
                    .padding(.bottom, 20)
                
                Text("نأخذها من منزلك")
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                //.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .font(Font.custom("Tajawal-Bold", size: 20))
                
                Text("تستطيع اختيار نوع النفايات من ضمن اكثر من خمسة انواع مختلفة من المخلفات القابلة لاعادة التدوير")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(Font.custom("Tajawal-Regular", size: 18))
                    .frame(width: 400, height: 100)
                    .lineSpacing(6)
                
                Button("أبدأ") {
                    isPrsnt = true
                }
                .frame(width: 200, height: 52.823)
                
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Color")/*@END_MENU_TOKEN@*/)
                .cornerRadius(80)
                .padding(.top, 20)
                .padding(.bottom, 20)
                .font(Font.custom("Tajawal-Bold", size: 18))
                
                .fullScreenCover(isPresented: $isPrsnt){
                    
                    Home()
                }
                
                
                
            }
            .padding(.bottom, 50)
            
            
        }//tabview
        
        
        
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
