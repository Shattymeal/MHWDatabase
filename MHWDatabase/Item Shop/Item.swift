//
//  Item.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 4/2/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit

class Item: MHEntity {
    let name: String

    required init(dbDict: [AnyHashable : Any]) {
        self.name = dbDict["name"] as? String ?? ""
        super.init(dbDict: dbDict)
    }
}
