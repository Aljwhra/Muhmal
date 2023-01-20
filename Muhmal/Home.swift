//
//  Home.swift
//  Muhmal
//
//  Created by Aljwhra Alnasser on 13/05/1444 AH.
//

import SwiftUI


struct SectionContent{
    let image:Image
    let text:String
}

var values = [
    SectionContent(
        image:Image("furniture"),
        text:"أثاث"
    ),
    SectionContent(
        image:Image("bottle"),
        text:"بلاستيك"
    ),
    SectionContent(
        image:Image("papers"),
        text:"ورق"
    ),
    SectionContent(
        image:Image("dropper"),
        text:"مخلفات طبية"
    ),
    SectionContent(
        image:Image("factory"),
        text:"مخلفات صناعية"
    ),
    SectionContent(
        image:Image("trash"),
        text:"أخرى"
    ),
   
]




struct BoxView: View {
    
    let sectionContent: SectionContent
    
    var body: some View {
        
        
        NavigationLink(destination: testing(sourceLink: self.sectionContent.text)){
            VStack{
                self.sectionContent.image
                    .padding(4)
                Text(self.sectionContent.text).foregroundColor(.black).font(Font.custom("Tajawal-Bold",size: 14))
            }
            .padding()
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                alignment: .center
            )
            .frame(height: 100)
            .background(Color.white)
            .cornerRadius(10)
            
        }
        .navigationBarBackButtonHidden(true)
    }
}
    
    struct Home: View {
        
        
        //
        private var numberOfImages = 3
        private let timer = Timer.publish(every: 3 , on: .main, in: .common).autoconnect()
        @State private var currentIndex = 0
        
        //Side Menu
        
        @State private var showMenu: Bool = false
        
        //
        @State var isPrsnt = false
        
       
        
        
        var body: some View {
            NavigationView{
                ScrollView{
                    ZStack {
                        
                        
                        VStack {
                            
                            
                            //use GeometryReader to calculate the width and height
                            HStack{
                                GeometryReader { geometry in
                                    
                                    TabView(selection: $currentIndex) {
                                        // loop through images from assets
                                        
                                        ForEach(0..<numberOfImages) {
                                            num in Image("\(num)")
                                                .resizable()
                                                .scaledToFill()
                                                .tag(num)
                                        }
                                        
                                    }.tabViewStyle(PageTabViewStyle())
                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                        .onReceive(timer, perform: { _ in
                                            withAnimation{
                                                currentIndex = currentIndex < numberOfImages ? currentIndex + 1:0
                                            }
                                        })
                                    
                                }
                                .frame(width: .infinity,height: 160)
                                
                            }
                            .padding()
                            
                            
                            
                            VStack{
                                
                                Text("ابحث عن اقرب موقع")
                                    .padding(.leading, 200.0)
                                    .font(Font.custom("Tajawal-Bold",size: 18))
                                    .foregroundColor(.black)
                                Button(action:  {
                                    isPrsnt = true
                                    
                                },label: {
                                    Image("imageLocation")
                                        .resizable()
                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                        .frame(width: .infinity,height: 160)
                                        .padding()
                                    
                                    
                                    
                                })
                                .fullScreenCover(isPresented: $isPrsnt){
                                   
                    
                                    Pagelocation()
                                }
                                
                                
                                
                            }
                            
                            VStack(spacing: 7){
                                
                                
                                Text("التصنيفات")
                                    .padding(.leading, 260.0)
                                    .font(Font.custom("Tajawal-Bold",size: 18))
                                    .padding(.bottom)
                                    .foregroundColor(.black)
                                
                                
                                
                                ForEach(
                                    0 ..< Int(
                                        ceil(
                                            Double(values.count)/2.0)
                                    ),
                                    id: \.self
                                ) { i in
                                    HStack(spacing: 7) {
                                        BoxView(sectionContent: values[i*2])
                                        if(i*2+1 < values.count){
                                            BoxView(sectionContent: values[i*2+1])
                                        }
                                    }
                                }
                            }.padding(14)
                            
                            
                            
                            
                        
                        }
                        
                        
                        GeometryReader{ _ in
                            
                            HStack{
                                Spacer()
                                
                                SideMenuView()
                                
                                    .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
                                    .animation(.easeInOut(duration: 0.3), value: showMenu)
                            }
                        }
                        .background(Color.black.opacity(showMenu ? 0.5 : 0))
                        
                        
                        
                        
                        
                    }


//                    .navigationTitle("الصفحة الرئيسية")
                    .navigationBarTitle("الصفحة الرئيسية", displayMode: .inline)
                    .font(Font.custom("Tajawal-Bold", size: 20))
                    //.navigationBarTitleDisplayMode(.inline)
                    .toolbar{
                        Button{
                            self.showMenu.toggle()
                            
                        }
                    label:{
                        if showMenu{
                            Image(systemName:"xmark" )
                                .font(.title2)
                                .foregroundColor(.black)
                                
                            
                        }else{
                            Image(systemName:"text.justify" )
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                        
                    }
                    
                        
                    }
                    
                    
                   
                }
                
                
              .background(Color("back"))
            }
           // .navigationBarBackButtonHidden(true)
        }
    }
    
    
    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            Home()
        }
    }
    
