//
//  ProfileViewController.swift
//  Tugas4
//
//  Created by Caroline Chan on 01/11/22.
//

import UIKit

class ProfileViewController: UIViewController {

    var username: String?
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var smallUsernameLabel: UILabel!
    @IBOutlet weak var bigUsernameLabel: UILabel!
    @IBOutlet weak var friendCImageView: UIImageView!
    @IBOutlet weak var friendBImageView: UIImageView!
    @IBOutlet weak var friendAImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setProfile()
        setUsername()
        setFriends()
        navigationItem.hidesBackButton = true
    }
    
    func setProfile() {
        profileImageView.layer.cornerRadius = 40
        profileImageView.layer.borderWidth = 4
        profileImageView.layer.borderColor = UIColor.white.cgColor
    }
    
    func setUsername() {
        bigUsernameLabel.text = username ?? ""
        smallUsernameLabel.text = "@" + (username ?? "")
    }
    
    func setFriends() {
        friendAImageView.layer.borderWidth = 3
        friendAImageView.layer.borderColor = UIColor.systemTeal.cgColor
        
        friendBImageView.layer.borderWidth = 3
        friendBImageView.layer.borderColor = UIColor.systemTeal.cgColor
        
        friendCImageView.layer.borderWidth = 3
        friendCImageView.layer.borderColor = UIColor.systemTeal.cgColor
    }
}
