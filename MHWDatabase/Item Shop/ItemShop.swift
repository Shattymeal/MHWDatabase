//
//  ItemShop.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 4/2/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit
import RxSwift

protocol ItemDataAccess {
    func getItems(ids: [Int]?) -> PublishSubject<Item>
}

class ItemShop: NSObject {
    var dataAccess: ItemDataAccess!
    
    func getItems(ids: [Int]?) -> PublishSubject<Item> {
        return self.dataAccess.getItems(ids: ids)
    }
}
