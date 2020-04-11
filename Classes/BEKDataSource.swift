//
//  BEKDataSource.swift
//  BEKComplexTable
//
//  Created by Behrad Kazemi on 1/2/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import Foundation
import UIKit

 enum BEKDataSource {
	 class Table: NSObject, UITableViewDataSource {
		var cells = [BEKGenericTableCellType]()
		
		public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
			return cells.count
		}
		
		public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
			var genericCell = cells[indexPath.row]
			let cell = tableView.dequeueReusableCell(withIdentifier: genericCell.reuseIdentifier, for: indexPath)
			genericCell.bind(toCell: cell)
			return cell
		}
	}
	
	 class Collection: NSObject, UICollectionViewDataSource {
		var cells = [BEKGenericCollectionCellType]()
		public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
			return cells.count
		}
		
		public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
			var genericCell = cells[indexPath.row]
			let cell = collectionView.dequeueReusableCell(withReuseIdentifier: genericCell.reuseIdentifier, for: indexPath)
			genericCell.bind(toCell: cell)
			return cell
		}
	}
}

