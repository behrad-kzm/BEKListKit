//
//  BEKCollectionDelegate.swift
//  BEKMultiCellCollection
//
//  Created by Behrad Kazemi on 4/6/20.
//  Copyright © 2020 Behrad Kazemi. All rights reserved.
//

import Foundation
import UIKit

public struct BEKCollectionLayoutComposer {
	public static func makeLayout(ForItemSize itemSize: CGSize, minimumLineSpacing: CGFloat = 8.0, minimumInteritemSpacing: CGFloat = 8.0, estimatedItemSize: CGSize = .zero, scrollDirection: UICollectionView.ScrollDirection = .vertical) -> UICollectionViewFlowLayout {
			let flowLayout = UICollectionViewFlowLayout()
			
			flowLayout.itemSize = itemSize
			
			flowLayout.estimatedItemSize = estimatedItemSize
			
			flowLayout.scrollDirection = scrollDirection
			
			flowLayout.minimumInteritemSpacing = minimumInteritemSpacing
			
			flowLayout.minimumLineSpacing = minimumLineSpacing
			
			return flowLayout
		}
}

