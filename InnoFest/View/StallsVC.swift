//
//  ViewController.swift
//  CrudApp
//
//  Created by Ryan The on 1/8/20.
//  Copyright © 2020 Ryan The. All rights reserved.
//

import UIKit
import SnapKit

class StallsVC: UIViewController {
	
	var tableView: StallsTableView {
		let tableView = StallsTableView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: UIScreen.main.bounds.size), style: .plain)
		tableView.parent = self
		return tableView
	}
	
	var searchBar = UISearchBar()
	
	override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
		super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.navigationController?.navigationBar.prefersLargeTitles = true
		self.title = "Stalls"
		self.view.backgroundColor = .systemBackground
		self.navigationItem.searchController = UISearchController()
		self.view.addSubview(tableView)
	}
	
	func presentView() {
		let newVC = UIViewController()
		self.navigationController?.pushViewController(newVC, animated: true)
	}
}

