//
//  MonsterDBAccess.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit
import FMDB
import RxSwift

extension DBAccess: MonsterDataAccess {
    func getMonsters(chunk: [Int]?) -> PublishSubject<Monster>? {
        let monsterPublish = self.getMHEntity(entityType: Monster.self)
        return monsterPublish
    }
}
