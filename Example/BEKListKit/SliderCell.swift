//
//  SliderCell.swift
//  BEKListKit_Example
//
//  Created by Behrad Kazemi on 4/9/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import BEKListKit
class SliderCell: UITableViewCell {

	@IBOutlet weak var collectionView: BEKMultiCellCollection!
	override func awakeFromNib() {
        super.awakeFromNib()
		collectionView.collectionViewLayout = BEKCollectionLayoutComposer.makeLayout(ForItemSize: bounds.size, scrollDirection: .horizontal)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
extension SliderCell: BEKBindableCell{
	typealias ViewModelType = [String]
	func bindData(withViewModel viewModel: [String]) {
		collectionView.removeAll()
		let cells = viewModel.compactMap{BEKGenericCell.Collection<SliderItemCell>(viewModel: $0)}
		collectionView.push(cells: cells)
	}
}
