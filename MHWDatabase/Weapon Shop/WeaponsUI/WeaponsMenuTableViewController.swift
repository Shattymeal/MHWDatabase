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
        register(WeaponTypeTableViewCell.self)
        addCellModels([
            BaseTableViewCellModel(reuseId: WeaponTypeTableViewCell.reuseId(), text: "Great Sword", imageName: "", selectedBlock: {
                print("great sword selected!")
            }),
            BaseTableViewCellModel(reuseId: WeaponTypeTableViewCell.reuseId(), text: "Long Sword", imageName: "", selectedBlock: {
                print("long sword selected!")
            }),
            BaseTableViewCellModel(reuseId: WeaponTypeTableViewCell.reuseId(), text: "Sword and Shield", imageName: "", selectedBlock: {
                print("sword and shield selected!")
            }),
            BaseTableViewCellModel(reuseId: WeaponTypeTableViewCell.reuseId(), text: "Dual Blades", imageName: "", selectedBlock: {
                print("dual blades selected!")
            }),
            BaseTableViewCellModel(reuseId: WeaponTypeTableViewCell.reuseId(), text: "Hammer", imageName: "", selectedBlock: {
                print("hammer selected!")
            }),
            BaseTableViewCellModel(reuseId: WeaponTypeTableViewCell.reuseId(), text: "Hunting Horn", imageName: "", selectedBlock: {
                print("hunting horn selected!")
            }),
            BaseTableViewCellModel(reuseId: WeaponTypeTableViewCell.reuseId(), text: "Lance", imageName: "", selectedBlock: {
                print("lance selected!")
            }),
            BaseTableViewCellModel(reuseId: WeaponTypeTableViewCell.reuseId(), text: "Gunlance", imageName: "", selectedBlock: {
                print("gunlance selected!")
            })
        ])
    }
}

