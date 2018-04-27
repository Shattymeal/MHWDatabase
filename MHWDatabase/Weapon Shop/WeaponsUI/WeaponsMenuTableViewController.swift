//
//  WeaponsMenuTableViewController.swift
//  MHWDatabase
//
//  Created by Kelly Morales on 4/27/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit

class WeaponsMenuTableViewController: BaseTableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "WEAPONS"
        //TODO: improve logic for getting weapon types, unless we want to hardcode - read from database or cache
        register(BaseTableViewCell.self)
        addCellModels([
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Great Sword", imageName: "", selectedBlock: {
                print("great sword selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Long Sword", imageName: "", selectedBlock: {
                print("long sword selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Sword and Shield", imageName: "", selectedBlock: {
                print("sword and shield selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Dual Blades", imageName: "", selectedBlock: {
                print("dual blades selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Hammer", imageName: "", selectedBlock: {
                print("hammer selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Hunting Horn", imageName: "", selectedBlock: {
                print("hunting horn selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Lance", imageName: "", selectedBlock: {
                print("lance selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Gunlance", imageName: "", selectedBlock: {
                print("gunlance selected!")
            })
        ])
    }
}

