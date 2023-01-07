//
//  ViewController.swift
//  LocalTestMe
//
//  Created by Tomato on 2021/06/12.
//

import UIKit

class ViewController: UIViewController {
	// MARK: - IBOulet
	@IBOutlet weak var hereButton: UIButton!
	
	
	// MARK: - IBAction
	@IBAction func hereTapped(_ sender: UIButton) {
		let titleStr = NSLocalizedString("ViewControllerAlertTitle", comment: "")
		let msgStr = NSLocalizedString("ViewControllerAlertMsg", comment: "")
		let okayStr = NSLocalizedString("ViewControllerAlertOkay", comment: "")
		let alert = UIAlertController(title: titleStr, message: msgStr, preferredStyle: UIAlertController.Style.alert)
		alert.addAction(UIAlertAction(title: okayStr, style: UIAlertAction.Style.default, handler: nil))
		self.present(alert, animated: true, completion: nil)
	}
	
	
	// MARK: - Life cycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let appName = NSLocalizedString("ViewControllerLocalTestMe", comment: "LocalTestMe")
		print(appName)
		
		let customDistance: Float = 2.54
		let localStr = String(format: NSLocalizedString("ViewControllerWeightLocal %.1f", comment: ""), customDistance)
		print(localStr)
		
		let amount: Double = 20.95
		let myString = String(format: NSLocalizedString("ViewControllerPaymentAmount %f", comment: ""), amount)
		print(myString)
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
	}
}

