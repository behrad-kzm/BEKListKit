//
//  SliderItemCell.swift
//  BEKListKit_Example
//
//  Created by Behrad Kazemi on 4/9/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import BEKListKit
class SliderItemCell: UICollectionViewCell {

	@IBOutlet weak var coverImage: UIImageView!
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
extension SliderItemCell: BEKBindableCell{
	typealias ViewModelType = String
	func bindData(withViewModel viewModel: String) {
		coverImage.image = UIImage(named: viewModel)
	}
	
	
}
