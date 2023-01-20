//
//  ContactInfo.swift
//  Muhmal
//
//  Created by Aljwhra Alnasser on 26/05/1444 AH.
//

//import SwiftUI
//
//  Created by amalghurm on 13/05/1444 AH.
//


import SwiftUI

struct ContactInfo: View {
    @State private var fullText=""
    @State private var isPresented = false
    @State private var isShowingHOME = false
    
    @Environment(\.presentationMode) var presentationMode
    
    let sourceLink: String
    
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
                            .navigationBarItems( leading: Button{
                                //isShowingHOME.toggle()
                                self.presentationMode.wrappedValue.dismiss()
                            }
                                                 
                                                 label:{Image(systemName: "arrow.backward")
                                
                                    .resizable(resizingMode: .tile).bold()
                                    .foregroundColor(Color(red: 0.153, green: 0.732, blue: 0.675))
                                
                                
                            })
                            .navigationTitle(self.sourceLink)
                            .fullScreenCover(isPresented: $isShowingHOME) {
                                testing(sourceLink: "None")
                            }}
                    Divider()
                    VStack{
                        Image("pic4")
                            .padding(.top,30)
                        VStack{
                            ZStack{
                                fixing_()
                                VStack{
                                    Text("الوصف").foregroundColor(Color.black).padding(.leading,270)
                                    ZStack{
                                        
                                        TextEditor(text: $fullText).padding()
                                            .multilineTextAlignment(.trailing)
                                            .background(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                                        
                                        Button {
                                            print("Button was tapped")
                                        } label: {
                                            ContentView()
                                        }
                                        
                                    }}.padding(.top,150)
                                    .padding(.bottom,-190)
                                    .frame(width: 343.0, height: 240)
                            }
                            
                            
                        }.padding()
                            .padding(.bottom,250)
                        
                        
                        
                        Button("التالي") {
                            isPresented.toggle()
                        }.fullScreenCover(isPresented:$isPresented){customnavview()}
                            .font(Font.custom("Tajawal-Bold", size: 16))
                        
                        // .frame(width: 342.0, height: 61.0)
                            .frame(width:345, height: 61)
                            .foregroundColor(.white)
                            .background(Color(red: 0.153, green: 0.732, blue: 0.675))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding()
                    }
                }}}}
    struct customnavview_Previews: PreviewProvider {
        static var previews: some View {
            VStack{
                ContactInfo(sourceLink: "None")
                Spacer()
                
            } }
        
    }}
