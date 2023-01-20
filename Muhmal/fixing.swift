//
//  fixing.swift
//  Muhmal
//

//  Created by amalghurm on 20/05/1444 AH.
//

import SwiftUI

struct fixing_: View {
    @State private var expand = false
    @State private var isExpanded = false
    @State private var selecednum = "اختر الحجم"
    var body: some View {
        VStack{
            Text("اختر الحجم *")
                .foregroundColor(Color.black)
                .padding(.leading,230)
                .font(Font.custom("Tajawal-Medium", size: 18))
                
            VStack{
                
                HStack(spacing: 210){
                    
                    Image(systemName: expand ? "chevron.up" :"chevron.down").resizable()
                        .frame(width: 13.0, height: 6.0).foregroundColor(.green)
                    Text("\(selecednum)         ").foregroundColor(Color.black).multilineTextAlignment(.trailing)
                    
                    
                }.frame(width: 300.0)
                .padding()
                    
                    .onTapGesture {
                        self.expand.toggle()
                    }
                Spacer()
                if expand{
                    ScrollView{
                        VStack{
                            ForEach(0 ..< wastsizes.count) { value in
                                Text(wastsizes[value].name)
                                    .foregroundColor(Color.black)
                                    .padding()
                                
                                
                                    .onTapGesture {
                                        self.selecednum = "\(wastsizes[value].name)"
                                        
                                        
                                        withAnimation{
                                            self.isExpanded.toggle()
                                            
                                        }
                                    }
                            }
                        }
                        
                    }.frame(width: 150, height: 50.0)}
                
            }.frame(height: expand ? 100: 50)
                .padding(7)
                .background(RoundedRectangle(cornerRadius: 5).stroke(.gray))
            
            
                
                
            Spacer()
            
        }
    }
}
struct Wastesize {
    var name: String
   
}

let wastsizes = [
    Wastesize(name: "صغير"),
    Wastesize(name: "متوسط"),
    Wastesize(name: "كبير")
  
]

struct fixing__Previews: PreviewProvider {
    static var previews: some View {
        fixing_()
        
    }
}
