//
//  testing.swift
//  Muhmal
//

//  Created by amalghurm on 21/05/1444 AH.
//

import SwiftUI
import SwiftUI
import MapKit
struct testing: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.59, longitude: 46.70), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    @State private var isShowingHOME = false
    @State private var name=""
    @State private var email=""
    @State private var number=""
    @State private var isPresented = false
    
    let sourceLink: String
    
    var body: some View {
        
      //  NavigationView {
           
            ScrollView {
                ZStack  {
                    
                    Color("black")
                        .navigationTitle(self.sourceLink)
                        .navigationBarBackButtonHidden(true)
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                Text("اثاث")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Tajawal-Bold", size: 20))
                                
                            }
                        }
                        .navigationBarItems( leading: Button{
                            isShowingHOME.toggle()
                        }
                                             
                                             label:{Image(systemName: "arrow.backward")
                            
                                .resizable(resizingMode: .tile).bold()
                                .foregroundColor(Color(red: 0.153, green: 0.732, blue: 0.675))
                            
                            
                        })
                        .fullScreenCover(isPresented: $isShowingHOME) {
                            Home()
                        }
                    
                    
                    VStack(spacing:20){
                        Divider()
                        Image("pic3")
                        VStack(){
                            Text("الاسم").foregroundColor(Color.black).padding(.leading,290)
                                .font(Font.custom("Tajawal-Medium", size: 18))
                            TextField("",text: $name)
                                .multilineTextAlignment(.trailing)
                                .padding()
                                .frame(width: 339.0, height: 46.0)
                                .background(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                            Text("الايميل").foregroundColor(Color.black).padding(.leading,280)
                                .font(Font.custom("Tajawal-Medium", size: 18))
                            TextField("",text: $email)
                                .multilineTextAlignment(.trailing)
                                .padding()
                                .frame(width: 339.0, height: 46.0)
                                .background(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                            Text("رقم الجوال").foregroundColor(Color.black).padding(.leading,250)
                                .font(Font.custom("Tajawal-Medium", size: 18))
                            
                            TextField("",text: $number)
                                .multilineTextAlignment(.trailing)
                                .padding()
                                .frame(width: 339.0, height: 46.0)
                                .background(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                            Text("حدد موقعك")
                                .font(Font.custom("Tajawal-Bold", size: 20))
                                .foregroundColor(Color.black)
                                .padding(.leading,250)
                                .padding()
                            location()
                                .frame(width: 350 ,height: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                        }
                        
                        Button(" التالي ") {
                            isPresented.toggle()
                            
                        }
                        
                        .font(Font.custom("Tajawal-Medium", size: 20)) .fullScreenCover(isPresented:$isPresented){ContactInfo(sourceLink: "None")}
                        // .font(Font.custom("Tajawal-Bold", size: 20))
                        // .frame(width: 342.0, height: 61.0)
                        .frame(width:345, height: 61)
                        .foregroundColor(.white)
                        .background(Color(red: 0.153, green: 0.732, blue: 0.675))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.top,60)
                        
                    }
                    
                }
                
                
                
            }
            .navigationBarBackButtonHidden(true)
      //  }
    }
    
}
struct testing_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            testing(sourceLink:"None")
        }
    }
}
