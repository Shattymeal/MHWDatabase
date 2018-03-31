//
//  Monster.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit

class Monster: MHEntity, Queryable {
    static var selectQuery: String = "select m.id, m.size, mt.name, mt.description mdesc from monster m inner join monster_text mt on m.id = mt.id"

    let isLarge: Bool
    let name: String
    let mDescription: String

    required init(dbDict: [AnyHashable: Any]) {
        if let sizeString = dbDict["size"] as? String {
            self.isLarge =  sizeString == "large" ? true : false
        } else {
            self.isLarge = false
        }
        self.name = dbDict["name"] as? String ?? "No Name"
        self.mDescription = dbDict["mdesc"] as? String ?? "No Description"
        super.init(dbDict: dbDict)

    }
}
