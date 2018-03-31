//
//  MHEntity.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit

protocol Queryable {
   static var selectQuery: String {get}
}

class MHEntity: NSObject {
    let id: Int
    
    required init(dbDict: [AnyHashable: Any]) {
        self.id = dbDict["id"] as? Int ?? -1
    }
}
