//
//  Weapon.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit

class Weapon: MHEntity, Queryable {
    static var selectQuery: String = "select w.id entityID, wt.name, w.weapon_type, w.rarity,  w.attack, w.element_type, w.element_damage from weapon w inner join weapon_text wt on entityID = wt.id"
    
    let name: String
    let weaponType: String
    let rarity: Int
    let attack: Int
    let elementType: String?
    let elementDamage: Int?
    
    required init(dbDict: [AnyHashable : Any]) {
        self.name = dbDict["name"] as? String ?? "No Name"
        self.weaponType = dbDict["weapon_type"] as? String ?? "No Type"
        self.rarity = dbDict["rarity"] as? Int ?? -1
        self.attack = dbDict["attack"] as? Int ?? -1
        self.elementType = dbDict["element_type"] as? String
        self.elementDamage = dbDict["elemnent_damage"] as? Int
        super.init(dbDict: dbDict)
    }
    
}
