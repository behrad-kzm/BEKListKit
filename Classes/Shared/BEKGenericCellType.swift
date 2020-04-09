//
//  BEKGenericCellType.swift
//  BEKMultiCellCollection
//
//  Created by Behrad Kazemi on 4/6/20.
//  Copyright © 2020 Behrad Kazemi. All rights reserved.
//

import Foundation
import UIKit.UICollectionViewCell
import UIKit.UITableViewCell

public protocol BEKGenericCollectionCellType: BEKGenericCellType {
	mutating func bind(toCell cell: UICollectionViewCell)
}


public protocol BEKGenericTableCellType: BEKGenericCellType {
	mutating func bind(toCell cell: UITableViewCell)
}

public protocol BEKGenericCellType {
	var reuseIdentifier: String { get }
	var type: AnyClass { get }
	var nib: UINib? { get set }

}
