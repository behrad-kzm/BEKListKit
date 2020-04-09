//
//  BEKMultiCellCollection.swift
//  BEKMultiCellCollection
//
//  Created by Behrad Kazemi on 4/6/20.
//  Copyright © 2020 Behrad Kazemi. All rights reserved.
//

import Foundation
import UIKit

public class BEKMultiCellCollection: UICollectionView {
	
	private var bekDataSource = BEKDataSource.Collection()
	public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
		super.init(frame: frame, collectionViewLayout: layout)
		self.dataSource = bekDataSource
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		self.dataSource = bekDataSource
	}
	func register(cell: BEKGenericCollectionCellType){
		
		if let nib = cell.nib {
			register(nib, forCellWithReuseIdentifier: cell.reuseIdentifier)
			return
		}
		register(cell.type, forCellWithReuseIdentifier: cell.reuseIdentifier)
	}	
	public func insert(cell: BEKGenericCollectionCellType, atIndex index: Int, completion: (Bool) -> Void = {_ in}){
		if index < 0 || index > bekDataSource.cells.count {
			completion(false)
		}
		bekDataSource.cells.insert(cell, at: index)
		register(cell: cell)
		reloadData()
		completion(true)
	}
	public func push(cell: BEKGenericCollectionCellType){
		bekDataSource.cells.append(cell)
		register(cell: cell)
		reloadData()
	}
	public func push(cells: [BEKGenericCollectionCellType]){
		bekDataSource.cells.append(contentsOf: cells)
		cells.forEach { register(cell: $0) }
		reloadData()
	}
	public func remove(cellAtIndex index: Int) {
		bekDataSource.cells.remove(at: index)
		reloadData()
	}
	public func removeAll() {
		bekDataSource.cells.removeAll()
		reloadData()
	}
	public func getAllCells() -> [BEKGenericCollectionCellType] {
		return bekDataSource.cells
	}

}

