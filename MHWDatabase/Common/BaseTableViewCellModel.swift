//
//  BaseTableViewCellModel.swift
//  MHWDatabase
//
//  Created by Kelly Morales on 4/26/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

/**
 Base object to keep track of tableViewCell data
 */
struct BaseTableViewCellModel {

    var reuseId: String?
    var text: String?
    var imageName: String?
    var selectedBlock: () -> Void = {}

    init() {
        self.reuseId = ""
        self.text = ""
        self.imageName = ""
        self.selectedBlock = {}
    }

    /**
     reuseId: to dequeue the cell
     text: to display as the built in textLabel text
     imageName: to override the default imageView
     selectedBlock: actions to execute when the cell has been selected
     */
    init(reuseId: String?, text: String?, imageName: String?, selectedBlock: @escaping () -> Void = {}) {
        self.reuseId = reuseId
        self.text = text
        self.imageName = imageName
        self.selectedBlock = selectedBlock
    }
}
