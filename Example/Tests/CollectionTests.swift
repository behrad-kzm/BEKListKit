//
//  CollectionTests.swift
//  BEKListKit_Tests
//
//  Created by Behrad Kazemi on 4/10/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest

import BEKListKit
import Nimble
class CollectionTests: XCTestCase {
	
	var collectionView: BEKMultiCellCollection!
	override func setUp() {
		let layout = BEKCollectionLayoutComposer.makeLayout(ForItemSize: CGSize(width: 10, height: 10), scrollDirection: .horizontal)
		collectionView = BEKMultiCellCollection(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 200, height: 100)), collectionViewLayout: layout)
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDown() {
		collectionView = nil
		super.tearDown()
		// Put teardown code here. This method is called after the invocation of each test method in the class.
	}
	
	func testAddingCell() {
		let cell = BEKGenericCell.Collection<UICollectionViewCell>(viewModel: "Test")
		collectionView.push(cell: cell)
//
//		expect(<#T##expression: T?##T?#>)
	}
	
	func testPerformanceExample() {
		// This is an example of a performance test case.
		self.measure {
			// Put the code you want to measure the time of here.
		}
	}
	
}

extension UICollectionViewCell: BEKBindableCell{
	public typealias ViewModelType = String
	
	public func bindData(withViewModel viewModel: String) {
		
	}
}
