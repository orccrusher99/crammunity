//
//  ClassSettingsViewController.swift
//  crammunity
//
//  Created by Clara Hwang on 7/29/16.
//  Copyright © 2016 orctech. All rights reserved.
//

import UIKit

class ClassSettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//	@IBOutlet weak var tableView: UITableView!
	let settingsList: [(title: String, list: [String])] = [("Class Settings", ["Add Friends","Change Class Name"]),("Chapter Settings", ["Add Files"]),("Other",["Delete Class"])]

	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var titleBar: UINavigationItem!

	
	override func viewDidLoad() {
		titleBar.title = "Settings"
	}

// MARK: TableView Data Source
	func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		// 1
		// Return the number of sections.
		return settingsList.count
	}
	
	func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let headerView = UIView(frame: CGRectMake(0, 0, tableView.frame.size.width, 40))
		let titleView = UITextView(frame: headerView.frame)
		titleView.text = settingsList[section].title
		titleView.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
		let gradient: CAGradientLayer = CAGradientLayer.init(layer: titleView)
		gradient.frame = headerView.bounds
		gradient.colors = [(UIColor(red: 0.89, green: 0.90, blue: 0.92, alpha: 1.00).CGColor as AnyObject), (UIColor(red: 0.82, green: 0.82, blue: 0.85, alpha: 1.00).CGColor as AnyObject)]
		titleView.layer.insertSublayer(gradient, atIndex: 0)

		headerView.addSubview(titleView)
		return headerView
	}
	
	func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
		return 40
	}
	
	func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return settingsList[section].title
	}
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return settingsList[section].list.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("SettingsCell", forIndexPath: indexPath)
		cell.textLabel?.text = settingsList[indexPath.section].list[indexPath.row]
		cell.backgroundColor = UIColor(colorLiteralRed: 230/256, green: 230/256, blue: 230/256, alpha: 1)
		return cell
//		if tableView == self.tableView {
//			cell = tableView.dequeueReusableCellWithIdentifier("UserCell", forIndexPath: indexPath) as! FriendSearchViewCell
//			let user = notFriends[indexPath.row]
//			cell.user = user
//			cell.usernameLabel.text = user.value!.valueForKey("username") as? String
//			cell.imageView?.image = Constants.Images.defaultProfile
//			cell.delegate = self
//			
//			cell.isFriend = false
//			return cell
//		}
	}
	
}