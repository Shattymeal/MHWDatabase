//
//  BaseTableViewCell.swift
//  MHWDatabase
//
//  Created by Kelly Morales on 4/26/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit

/**
 Simple tableViewCell with a label and possible image
 */
class BaseTableViewCell: UITableViewCell, TableViewCellProtocol {

    var model: BaseTableViewCellModel? {
        didSet {
            self.textLabel?.text = model?.text ?? ""
            self.imageView?.image = UIImage(named: model?.imageName ?? "")
        }
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "BaseTableViewCell")
        self.model = BaseTableViewCellModel()
        initialize()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(cellModel: BaseTableViewCellModel?) {
        super.init(style: .default, reuseIdentifier: "BaseTableViewCell")
        self.model = cellModel
        initialize()
    }

    func initialize() {
        self.contentView.backgroundColor = .darkGray
        self.textLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.textLabel?.textColor = .white
    }

    override func prepareForReuse() {
        model = nil
    }

    // TableViewCellProtocol
    func cellSelectedAction() {
        model?.selectedBlock()
    }

    func reuseId() -> String {
        let reuseId = "BaseTableViewCell"
        model?.reuseId = reuseId
        return reuseId
    }
}