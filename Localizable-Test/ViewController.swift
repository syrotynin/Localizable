//
//  ViewController.swift
//  Localizable-Test
//
//  Created by Serhii Syrotynin on 6/9/19.
//  Copyright © 2019 Serhii Syrotynin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var greetingLabel: UILabel!
	@IBOutlet weak var availableLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.

		defaultLocalization()
		R_localization()
		stringExtLocalization()
	}

	func defaultLocalization() {
		greetingLabel.text = NSLocalizedString("Greeting", comment: "")
		availableLabel.text = String(format: NSLocalizedString("Available", comment: ""), "9 am", "6 pm")
	}

	func R_localization() {
		greetingLabel.text = R.string.localizable.greeting()
		availableLabel.text = R.string.localizable.available("9 am", "6 pm")
	}

	func stringExtLocalization() {
		greetingLabel.text = "Greeting".localized()
		availableLabel.text = "Available".localized("9 am", "6 pm")
	}
}

