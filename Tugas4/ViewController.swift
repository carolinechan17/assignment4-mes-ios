//
//  ViewController.swift
//  Tugas4
//
//  Created by Caroline Chan on 01/11/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
    }
    
    @IBAction func doLogin(_ sender: Any) {
        let username: String = usernameTextField.text ?? ""
        let password: String = passwordTextField.text ?? ""
        if(!username.isEmpty && !password.isEmpty) {
            loginButton.isEnabled = true
            performSegue(withIdentifier: "showProfile", sender: username)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProfile" {
            let vc = segue.destination as! ProfileViewController
            vc.username = sender as? String
        }
    }
}

