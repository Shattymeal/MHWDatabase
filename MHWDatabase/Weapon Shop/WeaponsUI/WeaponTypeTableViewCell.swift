//
//  WeaponTypeTableViewCell.swift
//  MHWDatabase
//
//  Created by Kelly Morales on 4/27/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit

/**
 Displays a weapon category by name and image
 */
class WeaponTypeTableViewCell: BaseTableViewCell {
    // TableViewCellProtocol
    override class func reuseId() -> String {
        return "WeaponTypeTableViewCell"
    }
}
