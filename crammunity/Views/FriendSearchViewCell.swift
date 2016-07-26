//
//  FriendSearchViewCell.swift
//  crammunity
//
//  Created by Clara Hwang on 7/23/16.
//  Copyright © 2016 orctech. All rights reserved.
//

import UIKit
import Firebase

class FriendSearchViewCell: UITableViewCell {
	@IBOutlet weak var friendButton: UIButton!
	
	var user = FIRDataSnapshot()
	var isFriend = false
	
	@IBOutlet weak var usernameLabel: UILabel!
	
	var delegate: FriendSearchViewCellDelegate?
	
	@IBAction func onFriendButtonTapped(sender: UIButton) {
		if !isFriend
		{
			print("adding friends between cur: \(Constants.currentUser.uid)) and other: \(user.key)")
			delegate?.cell(self, didSelectFriendUser: user)
//			isFriend = true
		}
		else
		{
			print("removing friends between cur: \(Constants.currentUser.uid)) and other: \(user.key)")
			delegate?.cell(self, didSelectUnFriendUser: user)
//			isFriend = false
		}
	}
	
	

}