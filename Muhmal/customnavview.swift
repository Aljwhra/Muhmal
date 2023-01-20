//
//  customnavview.swift
//  Muhmal
//
//  Created by Aljwhra Alnasser on 26/05/1444 AH.
//

//  Created by amalghurm on 19/05/1444 AH.
//

import SwiftUI

struct customnavview: View {
    @State private var isShowingHOME = false
    @State private var isPresented = false
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ZStack{
                        Color("black")
                            .navigationBarTitleDisplayMode(.inline)
                            .toolbar {
                                ToolbarItem(placement: .principal) {
                                    Text("اثاث")
                                        .foregroundColor(.black)
                                        .font(Font.custom("Tajawal-Bold", size: 20))
                                }
                            }
//                            .navigationBarItems( leading: Button{
//                                isShowingHOME.toggle()
//                            }
//
//                                                 label:{Image(systemName: "arrow.backward")
//
//                                    .resizable(resizingMode: .tile).bold()
//                                    .foregroundColor(Color(red: 0.153, green: 0.732, blue: 0.675))
//
//
//                           }
                            .fullScreenCover(isPresented: $isShowingHOME) {
                                ContactInfo(sourceLink: "None")
                            }}
                    Divider()
                    Image("lins")
                        .padding(.top, 50.0)
                    Image("pic2")
                        .resizable()
                        .frame(width: 133.57, height: 264.0)
                        .padding(.top, 50.0)
                        .padding()
                    Text("شكرًا لك")
                        .font(Font.custom("Tajawal-Regular", size: 16))
                        .foregroundColor(Color.black)
                        .padding()
                    Text("تم ارسال طلبك بنجاح ")
                        .font(Font.custom("Tajawal-Regular", size: 16))
                        .padding(.bottom, -1.0)
                        .foregroundColor(Color.black)
                    Text("سيتم التواصل معك قريبًا ")
                        .font(Font.custom("Tajawal-Regular", size: 16))
                        .foregroundColor(Color.black)
                    
                    Button("الانتقال للصفحة الرئيسية") {
                        isPresented.toggle()
                        
                    }.fullScreenCover(isPresented:$isPresented){Home()}
                    
                        .font(Font.custom("Tajawal-Medium", size: 20))
                        .frame(width:345, height: 61)
                        .foregroundColor(.white)
                        .background(Color(red: 0.153, green: 0.732, blue: 0.675))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.top,40)
                    
                    Spacer()
                    
                }.padding()
            }
        }
    }
        struct customnavview_Previews: PreviewProvider {
            static var previews: some View {
                VStack{
                    customnavview()
                    Spacer()
                } }
        }
    }
