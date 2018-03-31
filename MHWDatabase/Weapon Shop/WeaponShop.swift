//
//  WeaponShop.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit
import RxSwift

protocol WeaponShopDataAccess {
    func getWeapons(chunk: [Int]?) -> PublishSubject<Weapon>?
}
class WeaponShop: NSObject {
    var dataAccess: WeaponShopDataAccess = DBAccess()
    
    func getWeapons(chunk: [Int]?) -> PublishSubject<Weapon>? {
        return self.dataAccess.getWeapons(chunk: chunk)
    }
}
