//
//  MonsterCompendium.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit
import RxSwift

protocol MonsterDataAccess {
    func getMonsters(ids: [Int]?) -> PublishSubject<Monster>?
}

class MonsterCompendium: NSObject {
    var dataAccess: MonsterDataAccess = DBAccess()
    
    func getMonsters(ids: [Int]?) -> PublishSubject<Monster>? {
        return self.dataAccess.getMonsters(ids: ids)
    }
}
