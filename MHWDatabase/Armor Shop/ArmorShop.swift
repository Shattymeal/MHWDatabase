//
//  Armory.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit
import RxSwift

protocol ArmorShopDataAccess {
    func getArmor(ids: [Int]?) -> PublishSubject<Armor>?
}
class ArmorShop: NSObject {
    var dataAccess: ArmorShopDataAccess = DBAccess()

    func getArmor(ids: [Int]?) -> PublishSubject<Armor>? {
        return self.dataAccess.getArmor(ids: ids)
    }
}
