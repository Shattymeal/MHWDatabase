//
//  MainMenuTableViewController.swift
//  MHWDatabase
//
//  Created by Kelly Morales on 4/26/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit

/**
 First screen user sees - Displays all categories
 */
class MainMenuTableViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MONSTER HUNTER WORLD DATABASE"
        register(BaseTableViewCell.self)
        addCellModels([
            BaseTableViewCellModel(reuseId: BaseTableViewCell.reuseId(), text: "Quests", imageName: "", selectedBlock: {
                print("quests selected!")
            }),
            BaseTableViewCellModel(reuseId: BaseTableViewCell.reuseId(), text: "Monsters", imageName: "", selectedBlock: {
                print("monsters selected!")
            }),
            BaseTableViewCellModel(reuseId: BaseTableViewCell.reuseId(), text: "Weapons", imageName: "", selectedBlock: {
                self.navigationController?.pushViewController(WeaponsMenuTableViewController(), animated: true)
            }),
            BaseTableViewCellModel(reuseId: BaseTableViewCell.reuseId(), text: "Armor", imageName: "", selectedBlock: {
                print("ARMOR selected!")
            }),
            BaseTableViewCellModel(reuseId: BaseTableViewCell.reuseId(), text: "Items", imageName: "", selectedBlock: {
                print("ITEMS selected!")
            }),
            BaseTableViewCellModel(reuseId: BaseTableViewCell.reuseId(), text: "Combinations", imageName: "", selectedBlock: {
                print("COMBOS selected!")
            }),
            BaseTableViewCellModel(reuseId: BaseTableViewCell.reuseId(), text: "Locations", imageName: "", selectedBlock: {
                print("LOCS selected!")
            }),
            BaseTableViewCellModel(reuseId: BaseTableViewCell.reuseId(), text: "Decorations", imageName: "", selectedBlock: {
                print("DECORS selected!")
            }),
            BaseTableViewCellModel(reuseId: BaseTableViewCell.reuseId(), text: "Skills", imageName: "", selectedBlock: {
                print("SKILLS selected!")
            }),
            BaseTableViewCellModel(reuseId: BaseTableViewCell.reuseId(), text: "Palico", imageName: "", selectedBlock: {
                print("PALICO selected!")
            })
        ])
    }
}
