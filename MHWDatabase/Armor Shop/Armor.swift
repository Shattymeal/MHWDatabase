//
//  Armor.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit

class Armor: MHEntity, Queryable {
    static var selectQuery: String = "select a.id entityID, a.rarity, a.armor_type, a.armorset_id, aTx.name from armor a inner join armor_text aTx on entityID = aTx.id"
    let rarity: Int
    let name: String
    let armorType: String
    let armorSetID: Int

    required init(dbDict: [AnyHashable : Any]) {
        self.rarity = dbDict["rarity"] as? Int ?? -1
        self.name = dbDict["name"] as? String ?? "No Name"
        self.armorType = dbDict["armor_type"] as? String ?? "no type"
        self.armorSetID = dbDict["armorset_id"] as? Int ?? -1
        super.init(dbDict: dbDict)
    }

}
