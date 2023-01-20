//
//  ItemListing.swift
//  Muhmal
//
//  Created by Aljwhra Alnasser on 26/05/1444 AH.
//

//  Created by atheer on 19/12/2022.
//

import Foundation
import CloudKit

struct ItemListing{
    
    var recordId : CKRecord.ID?
    let name : String
    let CommercialRegister : String
    let Email : String
    let phone : String
    
    
    init(recordId: CKRecord.ID? = nil, name: String, CommercialRegister: String, Email: String, phone: String){
        self.name = name
        self.CommercialRegister = CommercialRegister
        self.Email = Email
        self.phone = phone
    }
    
    func toDictionary() -> [String: Any]{
        return ["name": name, "CommercialRegister": CommercialRegister, "Email": Email, "phone": phone]
    }
    
   
    }
