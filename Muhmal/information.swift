//
//  information.swift
//  Muhmal
//
//  Created by atheer on 06/12/2022.
//

import SwiftUI
import UIKit
import CloudKit

struct information: View {
//
//    init() {
//           let coloredAppearance = UINavigationBarAppearance()
//           coloredAppearance.configureWithOpaqueBackground()
//           coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
//        UINavigationBar.appearance().standardAppearance = coloredAppearance
//               UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
//
//
//     }
//
    
    
    init(vm: ItemsListViewModel){
        _vm = StateObject(wrappedValue: vm)
        
        let coloredAppearance = UINavigationBarAppearance()
            coloredAppearance.configureWithOpaqueBackground()
            coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            UINavigationBar.appearance().standardAppearance = coloredAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        
    }
    
    
    
    
  
    @StateObject private var vm: ItemsListViewModel
    @State var isShowinghome:Bool=false
    @State var name: String = ""
    @State var CommercialRegister: String = ""
    @State var Email: String = ""
    @State var phone: String = ""
    @State private var  isShowingHOME:Bool=false
    
    @Environment(\.presentationMode) var presentationMode
    
    //@State private var isPresented = false
    
    
    
    
    
    
    
    var body: some View {
        
        NavigationView {
            ScrollView{
                ZStack  {
                    
                    Color("black")
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                Text("طلب شراكة")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Tajawal-Bold", size: 20))
                            }
                        }
                    
                    
                    //                Button(action: {
                    //                            self.presentationMode.wrappedValue.dismiss()
                    //                    //self.isPresented = true
                    //                        },label: {
                    //
                    //                            Image(systemName: "arrow.backward")
                    //                              // .resizable(resizingMode: .tile).bold()
                    //
                    //                                .foregroundColor(Color("Color"))
                    //
                    //                        }
                    //)
                    //
                    
                    
                    
                        .navigationBarItems( leading: Button{
                            isShowingHOME.toggle()
                            self.presentationMode.wrappedValue.dismiss()
                        }
                                             
                                             label:{Image(systemName: "arrow.backward")
                            
                                .resizable(resizingMode: .tile).bold()
                                .foregroundColor(Color("Color"))
                            
                            
                        })
                    //                    .fullScreenCover(isPresented: $isShowingHOME) {
                    //                        //Home()
                    //                          //  .navigationBarBackButtonHidden()
                    //
                    //
                    //
                    //                    }
                    
                    
                    
                    
                    
                    VStack (spacing: 30.0){
                        
                        
                        
                        VStack  (spacing: 5){
                            
                            Text("بيانات الشركة")
                                .multilineTextAlignment(.trailing)
                                .padding(.leading,200.0)
                                .foregroundColor(Color.black)
                                .font(Font.custom("Tajawal-Bold", size: 20))
                                .padding(.leading, 28.0)
                                .padding(.top,80)
                                .padding(.bottom,10)
                            
                        }
                        VStack  {
                            Text("اسم الشركة")
                                .padding(.leading,266.0)
                                .foregroundColor(Color.black)
                                .font(Font.custom("Tajawal-Medium", size: 18))
                                .padding([.leading, .bottom], 1.0)
                            TextField("",text:$name)
                                .frame(width:339,height: 46)
                                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1))
                                .multilineTextAlignment(.trailing)
                            
                            
                            Spacer()
                            
                            
                        }
                        VStack  {
                            Text("السجل التجاري")
                                .padding(.leading,240)
                                .foregroundColor(Color.black)
                                .font(Font.custom("Tajawal-Medium", size: 18))
                                .padding([.leading, .bottom], 1.0)
                            TextField(" ", text: $CommercialRegister)
                                .frame(width:339,height: 46)
                                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1))
                                .multilineTextAlignment(.trailing)
                            
                            
                            
                        }
                        VStack  {
                            Text("البريد الالكتروني للشركة")
                                .padding(.leading,190)
                                .foregroundColor(Color.black)
                                .font(Font.custom("Tajawal-Medium", size: 18))
                                .padding([.leading, .bottom], 1.0)
                            TextField("", text: $Email)
                                .frame(width:339,height: 46)
                                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1))
                                .multilineTextAlignment(.trailing)
                            
                            
                        }
                        VStack  {
                            
                            Text("رقم للتواصل")
                                .padding(.leading,266)
                                .foregroundColor(Color.black)
                                .font(Font.custom("Tajawal-Medium", size: 18))
                            
                                .padding([.leading, .bottom], 1.0)
                            TextField("" , text: $phone)
                                .frame(width:339,height: 46)
                                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray,lineWidth: 1))
                                .multilineTextAlignment(.trailing)
                                .padding(.bottom,40)
                            Spacer()
                        }
                        
                        VStack  {
                            
                            Button {
                                
                                if(!self.phone.isEmpty ){ isShowinghome.toggle()
                                    
                                    vm.saveItem(name: name, CommercialRegister: CommercialRegister, Email: Email, phone: phone)
                                    
                                    self.name=""
                                    self.CommercialRegister=""
                                    self.Email=""
                                    self.phone=""
                                    
                                    
                                }
                            } label: {
                                Text("ارسال الطلب")
                                    .font(Font.custom("Tajawal-Medium", size: 20))
                                
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width:345, height: 61)
                                    .background(Color("Color"))
                                    .cornerRadius(10.0)
                                
                            }
                            .padding(.vertical, 15.0)
                            .fullScreenCover(isPresented: $isShowinghome) {
                                CustomActionSheet()
                                
                                
                            }
                            
                        }
                        .padding(10)
                    }
                    
                    .padding(.bottom, 69.0)
                }
            }
        }
    }
    
  
            struct information_Previews: PreviewProvider {
                static var previews: some View {
                    information(vm: ItemsListViewModel(container: CKContainer.default()))
                }
            }
            
            
        }


        
        
        struct CustomActionSheet : View {
            
            
            @State var isShowingpasss=false
            @State var isshownhomeee:Bool=false
            @State var showingPopup = false
            
            @Environment(\.presentationMode) var presentationMode

            
            @EnvironmentObject var popupManager: PopupManager
            
            
            var body : some View{
                
                ZStack {
                    
                    Color.black.edgesIgnoringSafeArea(.all).opacity(0.20)
                    
                    ZStack {
                        VStack(spacing: 0) {
                            HStack(spacing: 0) {
                                Divider().frame(width: 5, height: 0).opacity(0)
                                
                                Button (action: {
                                    
                                    isShowingpasss.toggle()
                                    
                                    
                                }) {
                                    
                                    Image("image 3")
                                        .resizable()
                                        .frame(width: 10, height: 12)
                                        .scaledToFit()
                                        .foregroundColor(Color.white)
                                        .padding()
                                        .onTapGesture {
                                            self.presentationMode.wrappedValue.dismiss()
                                            
//                                            navigationController.popToViewController(ofClass: Home<Home>.self)
                                            
                                            


                                        }
//                                        .fullScreenCover(isPresented:$isShowingpasss ){
//                                            Home()
//
//                                        }
                                    
                                    
                                }
                                Spacer()
                            }
                            Image("image2")
                                .resizable()
                                .frame(width: 39, height: 39)
                                .scaledToFit()
                                .foregroundColor(Color.white)
                                .padding()
                            
                            
                            Text("شكراً لك")
                                .font(Font.custom("Tajawal-Bold", size: 20))
                                .foregroundColor(Color.black)
                                .padding(.top, 20)
                            Text("تم ارسال طلبك بنجاح")
                                .foregroundColor(Color.black)
                                .font(Font.custom("Tajawal-Medium", size: 18))
                                .padding()
                            
                                .frame(height: 50)
                                .padding(.bottom, 30)
                            
                        }
                        .background(Color.white.opacity(0.80))
                        .border(.gray)
                        .cornerRadius(5)
                    }.padding(.leading, 60)
                        .padding(.trailing, 60)
                    
                    
                    
                }
                
            }
            
        }





extension UINavigationController {
    func popToViewController(ofClass: AnyClass, animated: Bool = true) {
        if let vc = viewControllers.last(where: { $0.isKind(of: ofClass) }) {
            popToViewController(vc, animated: animated)
        }
    }
}
