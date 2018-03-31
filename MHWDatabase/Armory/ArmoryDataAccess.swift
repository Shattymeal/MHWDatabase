//
//  ArmoryDataAccess.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit
import FMDB
import RxSwift

extension DBAccess: ArmoryDataAccess {
    func getArmor(chunk: [Int]?) -> PublishSubject<Armor>? {
        let armorPublish = self.getMHEntity(entityType: Armor.self)
        return armorPublish
    }
}
