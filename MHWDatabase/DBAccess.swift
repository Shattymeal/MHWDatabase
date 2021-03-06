//
//  DBAccess.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit
import FMDB
import RxSwift
class DBAccess: NSObject {
    let mhwDBQueue: FMDatabaseQueue = {
        let dbPath = Bundle.main.path(forResource: "mhw", ofType: "db")
        return FMDatabaseQueue.init(path: dbPath)
    }()
    
    func getMHEntity<T: MHEntity>(entityType: T.Type, ids: [Int]?) -> PublishSubject<T>? where T: Queryable {
        let entityPublish = PublishSubject<T>()
        
        DispatchQueue.global(qos: .userInteractive).async {
            self.mhwDBQueue.inDatabase { (mhwDB) in
                do {
                    var rs: FMResultSet?
                    if ids != nil {
                        var questionMarks = ids!.reduce("", { (result: String, _) -> String in
                            return result + "?,"
                        })
                        _ = questionMarks.removeLast()
                        let inStatement = " WHERE entityID IN (\(questionMarks))"
                        rs = mhwDB.executeQuery(entityType.selectQuery + inStatement, withArgumentsIn: ids!)
                    } else {
                        rs = try mhwDB.executeQuery(entityType.selectQuery, values: nil)
                    }
                    
                    while rs?.next() == true {
                        guard let dbDict = rs?.resultDictionary else {
                            continue
                        }
                        
                        let entity = T.init(dbDict: dbDict)
                        entityPublish.onNext(entity)
                    }
                } catch {
                    print("Error")
                }
            }
        }
        return entityPublish
    }
}
