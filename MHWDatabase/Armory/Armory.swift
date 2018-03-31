//
//  Armory.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit
import RxSwift

protocol ArmoryDataAccess {
    func getArmor(chunk: [Int]?) -> PublishSubject<Armor>?
}
class Armory: NSObject {
    var dataAccess: ArmoryDataAccess = DBAccess()

    func getArmor(chunk: [Int]?) -> PublishSubject<Armor>? {
        return self.dataAccess.getArmor(chunk: chunk)
    }
}
