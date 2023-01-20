//
//  Pagelocation.swift
//  Muhmal
//

import SwiftUI

struct Pagelocation: View {
    
    
    @State private var  isShowingHOME:Bool=false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            
            ScrollView{
                
                VStack{
                    ZStack{
                        Color("black")
                            .navigationBarTitleDisplayMode(.inline)
                            .toolbar {
                                ToolbarItem(placement: .principal) {
                                    Text("اقرب موقع")
                                        .foregroundColor(.black)
                                        .font(Font.custom("Tajawal-Bold", size: 20))
                                }
                            }
                    }
                    .navigationBarItems( leading: Button{
                        isShowingHOME.toggle()
                        self.presentationMode.wrappedValue.dismiss()
                    }
                                         label:{Image(systemName: "arrow.backward")

                            .resizable(resizingMode: .tile).bold()
                            .foregroundColor(Color("Color"))


                    })
                    
                    ZStack{
                        VStack {
                            Text("مواقع النفايات ")
                                .font(Font.custom("Tajawal-Bold", size: 20))
                                .padding(.leading, 175 )
                                .padding(.top)
                            
                            NavigationLink(destination: LocationView()){
                                LocationView()
                                    .frame(width: 350 ,height: 200)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding(.bottom, 10)
                }
                
                Divider()
                
                    ZStack{
                        
                    HStack(spacing: 10){
                        Text("ورق")
                            .font(Font.custom("Tajawal-Bold", size: 16))
                            .padding(.leading,50)
                        Image("ورق")
                            .resizable()
                            .frame(width:50 ,height: 50)
                            .padding(.leading, 5)
                    }
                    .padding(.leading, 190)
                    .padding(.bottom, 225)

                    
                    
                    HStack(spacing: 10){
                        Text("أثاث")
                            .font(Font.custom("Tajawal-Bold", size: 16))
                            .padding(.leading,50)
                        Image("أثاث")
                            .resizable()
                            .frame(width:50 ,height: 50)
                            .padding(.leading, 5)
                    }
                    .padding(.leading, 189)
                    .padding(.bottom, 99)

                    
                    
                    HStack(spacing: 10){
                        Text("بلاستيك")
                            .font(Font.custom("Tajawal-Bold", size: 16))
                            .padding(.leading,50)
                        Image("بلاستيك")
                            .resizable()
                            .frame(width:50 ,height: 50)
                            .padding(.leading, 1)
                    }
                    .padding(.leading, 155)
                    .padding(.bottom, 350)
                    
                    
                    HStack(spacing: 10){
                        Text("مخلفات طبية")
                            .font(Font.custom("Tajawal-Bold", size: 16))
                            .padding(.leading,50)
                        Image("مخلفات طبية")
                            .resizable()
                            .frame(width:50 ,height: 50)
                            .padding(.leading, 5)
                    }
                    .padding(.leading, 115)
                    .padding(.top, 30)
                    
                    
                    
                    HStack(spacing: 10){
                        Text("مخلفات صناعية")
                            .font(Font.custom("Tajawal-Bold", size: 16))
                            .padding(.leading,50)
                        Image("مخلفات صناعية")
                            .resizable()
                            .frame(width:50 ,height: 50)
                            .padding(.leading, 5)
                    }
                    .padding(.leading, 95)
                    .padding(.top, 159)
                }
                
//                    .navigationTitle("اقرب موقع")
//                    .navigationBarTitleDisplayMode(.inline)
//                    .accentColor(.black)
            }
        }
    }
    }

struct Pagelocation_Previews: PreviewProvider {
static var previews: some View {
    Pagelocation()
}
}

