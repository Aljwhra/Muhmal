//
//  ItemsListViewModel.swift
//  Muhmal
//
//  Created by Aljwhra Alnasser on 26/05/1444 AH.
//
//
//  Created by atheer on 20/12/2022.
//

import Foundation
import CloudKit

enum RecordType: String{
    case itemsListing = "ItemsListing"
}

class ItemsListViewModel: ObservableObject{
    
    private var database: CKDatabase
    private var container: CKContainer
    
    init(container: CKContainer){
        self.container = container
        self.database = self.container.publicCloudDatabase
        
    }
    
    func saveItem(name: String, CommercialRegister: String, Email: String, phone: String ){
        
        let record = CKRecord(recordType: RecordType.itemsListing.rawValue)
        let itemsListing = ItemListing(name: name, CommercialRegister: CommercialRegister, Email: Email, phone: phone)
        record.setValuesForKeys(itemsListing.toDictionary())
        
        // saving record in database
        
        self.database.save(record){ newRecord, error in
            if let error = error {
                print(error)
            }else
            if let _ = newRecord {
                print("SAVED")
            }
        }
    }
    
    func populateItems(){
        
        var query = CKQuery(recordType: RecordType.itemsListing.rawValue, predicate: NSPredicate(value: true))
        database.fetch(withQuery: query) { Result in
            switch Result {
            case.success(let result):
                result.matchResults.compactMap{ $0.1 }
                    .forEach{
                        switch $0 {
                        case .success(let record):
                            print(record)
                        case .failure(let Error):
                            print(Error)
                        }
                    }
            case.failure(let Error):
                print(Error)
            }
        }
    }
}



