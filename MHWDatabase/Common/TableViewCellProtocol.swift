//
//  TableViewCellProtocol.swift
//  MHWDatabase
//
//  Created by Kelly Morales on 4/26/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

public protocol TableViewCellProtocol {
    /// actions to execute when the cell has been selected
    func cellSelectedAction()
    /// so we can declare the reuseIds only once per cell type
    func reuseId() -> String
}
