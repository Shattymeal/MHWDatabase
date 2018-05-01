//
//  BaseTableViewController.swift
//  MHWDatabase
//
//  Created by Kelly Morales on 4/25/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit

class BaseTableViewController: UITableViewController {

    private var cellData: [BaseTableViewCellModel] = []

    init() {
        super.init(style: .grouped)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.backgroundColor = .darkGray
        self.navigationController?.navigationBar.barTintColor = .darkGray
        self.navigationController?.navigationBar.tintColor = .white
        let textAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
    }

    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }

    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = cellData[indexPath.row]
        guard let reuseId = cellType.reuseId, let cell = tableView.dequeueReusableCell(withIdentifier: reuseId) as? BaseTableViewCell else {
            return UITableViewCell()
        }
        cell.model = cellType
        return cell
    }

    override public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        guard let cell = tableView.cellForRow(at: indexPath) as? BaseTableViewCell else {
            return
        }
        cell.cellSelectedAction()
    }

    // Helpers
    func register(_ cellClass: AnyClass, identifier: String? = nil) {
        tableView?.register(cellClass, forCellReuseIdentifier: (cellClass as? TableViewCellProtocol)?.reuseId() ?? String(describing: cellClass))
    }

    func addCellModels(_ models: [BaseTableViewCellModel]) {
        cellData.append(contentsOf: models)
    }
}
