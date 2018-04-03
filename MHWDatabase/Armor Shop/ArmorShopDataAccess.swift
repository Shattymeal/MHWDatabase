//
//  ArmorShopDataAccess.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit
import FMDB
import RxSwift

extension DBAccess: ArmorShopDataAccess {
    func getArmor(ids: [Int]?) -> PublishSubject<Armor>? {
        let armorPublish = self.getMHEntity(entityType: Armor.self, ids: ids)
        return armorPublish
    }
}
