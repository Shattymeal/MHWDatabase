//
//  WeaponShopDataAccess.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit
import RxSwift

extension DBAccess: WeaponShopDataAccess {
    func getWeapons(ids: [Int]?) -> PublishSubject<Weapon>? {
        let weaponPublish = self.getMHEntity(entityType: Weapon.self, ids: ids)
        return weaponPublish
    }
}
