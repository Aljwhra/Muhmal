//
//  ContactView.swift
//  Muhmal
//
//  Created by Aljwhra Alnasser on 26/05/1444 AH.

//  Created by Sumaya Alzahrani on 26/05/1444 AH.
//

import SwiftUI

struct ContactView: View {
    
    
    @State private var  isShowingHOME:Bool=false
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        NavigationView {
            VStack{
                            
                Image("4")
                    .resizable()
                    .frame(width: 220, height: 250)
                    .padding(.bottom, 60)
                    .padding(.top, 60)
                VStack{
                    
                    HStack{
                        
                        
                        
                        Text("البريد الإلكتروني")
                        //.padding(.bottom, 5)
                            .foregroundColor(Color("grayd"))
                            .bold()
                            .font(Font.custom("Tajawal-Bold", size: 16))
                            .padding(.leading, 200)
                        
                        
                        Image("mail11")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.bottom, 7)
                            
                        
                        
                        
                    }
                    Text("Muhmal@icloud.com")
                        .padding(.leading, 190)
                    //   .padding(.trailing, 50)
                    
                    
                    
                    HStack{
                        
                        
                        Text("الجوال")
                            .padding(.bottom, 5)
                            .padding(.top, 5)
                            .padding(.leading, 270)
                            .foregroundColor(Color("grayd"))
                        
                            .bold()
                            .font(Font.custom("Tajawal-Bold", size: 16))
                        
                        Image("phone11")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.bottom, 7)
                        
                        
                    }.padding(.top, 20)
                    
                    Text("0564429002")
                        .foregroundColor(Color("grayd"))
                        .padding(.leading, 250)
                        .padding(.bottom, 10)
                    //  .padding(.trailing, 30)
                     Spacer()
                    
                    
                }
                .padding(.trailing, 10)
              
                
                HStack{
                    Color("black")
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                Text("تواصل معنا")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Tajawal-Bold", size: 20))
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
                }
                
            }
          
       }
        
    }
    
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
