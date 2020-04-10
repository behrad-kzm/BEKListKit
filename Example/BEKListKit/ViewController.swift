//
//  ViewController.swift
//  BEKListKit
//
//  Created by behrad-kzm on 04/08/2020.
//  Copyright (c) 2020 behrad-kzm. All rights reserved.
//

import UIKit
import BEKListKit
class ViewController: UIViewController {
	
	@IBOutlet weak var tableView: BEKMultiCellTable!
	override func viewDidLoad() {
		super.viewDidLoad()
		let names = ["first","second","third","fourth","fifth"]
		(0...3).forEach { _ in
			let cell = BEKGenericCell.Table<SliderCell>(viewModel: names)
			tableView.push(cell: cell)
		}
		tableView.delegate = self
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
}

extension ViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 200
	}
}
