//
//  BEKGenericCell.swift
//  BEKMultiCellTable
//
//  Created by Behrad Kazemi on 1/3/20.
//

import UIKit

public enum BEKGenericCell {
	
	public struct Table<CellType>: BEKGenericTableCellType where CellType: UITableViewCell, CellType: BEKBindableCell {
		public var nib: UINib?
		public let viewModel: CellType.ViewModelType
		public let reuseIdentifier = NSStringFromClass(CellType.self)
		public let type: AnyClass = CellType.self
		
		public init(viewModel: CellType.ViewModelType, withNib nib: UINib? = UINib(nibName: NSStringFromClass(CellType.self).components(separatedBy: ".").last ?? "", bundle: nil)) {
			self.nib = nib
			self.viewModel = viewModel
		}
		
		public func bind(toCell cell: UITableViewCell) {
			if let cell = cell as? CellType {
				cell.bindData(withViewModel: viewModel)
			}
		}
	}
	
	public struct Collection<CellType>: BEKGenericCollectionCellType where CellType: UICollectionViewCell, CellType: BEKBindableCell {
		public var nib: UINib?
		public let viewModel: CellType.ViewModelType
		public let reuseIdentifier = NSStringFromClass(CellType.self)
		public let type: AnyClass = CellType.self
		
		public init(viewModel: CellType.ViewModelType, withNib nib: UINib? = UINib(nibName: NSStringFromClass(CellType.self).components(separatedBy: ".").last ?? "", bundle: nil)) {
			self.nib = nib
			self.viewModel = viewModel
		}
		public mutating func bind(toCell cell: UICollectionViewCell) {
			if let cell = cell as? CellType {
				cell.bindData(withViewModel: viewModel)
			}
		}
	}
}
