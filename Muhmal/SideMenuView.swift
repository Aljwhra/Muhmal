//
//  SideMenuView.swift
//  Muhmal
//
//  Created by Aljwhra Alnasser on 20/05/1444 AH.
//



import SwiftUI
import CloudKit

struct SideMenuView: View {
    
    @State var isPrsnt = false
    @State var isPrsnt2 = false
    
   // @State private var showingDetaill = false
    
    var body: some View {
    
       
            VStack{
                ScrollView{
                
//                HStack {
//
//                    Button(action:  {
//
//                    },label: {
//                        Text("إعدادات المظهر")
//                            .font(Font.custom("Tajawal-Bold",size: 18))
//                            .foregroundColor(.black)
//                        Image("moon")
//                    })
//
//                }
//                .padding()
                
                HStack{
                    
                    Button(action:  {
                        isPrsnt = true
                        //  self.showingDetaill.toggle()
                        
                    },label: {
                        Text("طلب شراكة")
                            .font(Font.custom("Tajawal-Bold",size: 18))
                            .foregroundColor(.black)
                        Image("Shape")
                    })
                    .fullScreenCover(isPresented: $isPrsnt){
                        //.sheet(isPresented: $showingDetaill){
                        
                        information(vm: ItemsListViewModel(container: CKContainer.default()))
                    }
                    
                }
                .padding()
                
                HStack{
                    
                    Button(action:  {
                        
                        isPrsnt2 = true
                        
                    },label: {
                        Text("تواصل معنا")
                            .font(Font.custom("Tajawal-Bold",size: 18))
                            .foregroundColor(.black)
                        Image("phone")
                    })
                    
                    .fullScreenCover(isPresented: $isPrsnt2){

                        ContactView()
                    }
                    
                    
                    
                }
                .padding()
                Spacer()
                    .ignoresSafeArea()
                
            }
            
            .padding(30)
            .background(Color("back"))
            .edgesIgnoringSafeArea(.bottom)
            
            
        }
    }
   
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
