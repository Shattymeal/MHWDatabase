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
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Quests", imageName: "", selectedBlock: {
                print("quests selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Monsters", imageName: "", selectedBlock: {
                print("monsters selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Weapons", imageName: "", selectedBlock: {
                self.navigationController?.pushViewController(WeaponsMenuTableViewController(), animated: true)
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Armor", imageName: "", selectedBlock: {
                print("ARMOR selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Items", imageName: "", selectedBlock: {
                print("ITEMS selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Combinations", imageName: "", selectedBlock: {
                print("COMBOS selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Locations", imageName: "", selectedBlock: {
                print("LOCS selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Decorations", imageName: "", selectedBlock: {
                print("DECORS selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Skills", imageName: "", selectedBlock: {
                print("SKILLS selected!")
            }),
            BaseTableViewCellModel(reuseId: "BaseTableViewCell", text: "Palico", imageName: "", selectedBlock: {
                print("PALICO selected!")
            })
        ])
    }
}
