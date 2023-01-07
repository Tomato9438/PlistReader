//
//  ViewController.swift
//  PropertyListMe
//
//  Created by Tomato on 2021/08/25.
//

import UIKit

class ViewController: UIViewController {
	// MARK: - Variables
	
	
	// MARK: - IBOutlet
	
	
	// MARK: - IBAction
	
	
	// MARK: - Life cycle
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		if let path = Bundle.main.path(forResource: "MyList", ofType: "plist") {
			let fileURL = URL(fileURLWithPath: path)
			do {
				let data = try Data(contentsOf: fileURL)
				let items = try PropertyListDecoder().decode([ToolsItem].self, from: data)
				print("Items: \(items)")
			} catch let error as NSError {
				print("\(error)")
			}
		}
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
	}
}

