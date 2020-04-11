//
//  BEKMultiCellTable.swift
//  BEKMultiCellTable
//
//  Created by Behrad Kazemi on 1/1/20.
//  Copyright © 2020 BEKApps. All rights reserved.
//

import UIKit

public class BEKMultiCellTable: UITableView {
	
	private var bekDataSource = BEKDataSource.Table()
	
	public override init(frame: CGRect, style: UITableView.Style) {
		super.init(frame: frame, style: style)
		self.dataSource = bekDataSource
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		self.dataSource = bekDataSource
	}
	func register(cell: BEKGenericTableCellType){
		if let nib = cell.nib {
			register(nib, forCellReuseIdentifier: cell.reuseIdentifier)
			return
		}
		register(cell.type, forCellReuseIdentifier: cell.reuseIdentifier)
	}
	public func insert(cell: BEKGenericTableCellType, atIndex index: Int, completion: (Bool) -> Void = {_ in}){
		if index < 0 || index > bekDataSource.cells.count {
			completion(false)
		}
		bekDataSource.cells.insert(cell, at: index)
		register(cell: cell)
		reloadData()
		completion(true)
	}
	public func push(cell: BEKGenericTableCellType){
		bekDataSource.cells.append(cell)
		register(cell: cell)
		reloadData()
	}
	public func push(cells: [BEKGenericTableCellType]){
		bekDataSource.cells.append(contentsOf: cells)
		cells.forEach { register(cell: $0) }
		reloadData()
	}
	public func remove(cellAtIndex index: Int) {
		bekDataSource.cells.remove(at: index)
	}
	public func removeAll() {
		bekDataSource.cells.removeAll()
	}
	public func getAllCells() -> [BEKGenericTableCellType]{
		return bekDataSource.cells
	}
}
