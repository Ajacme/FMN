//
//  LoginViewController.swift
//  FriendsMobileNetwork
//
//  Created by ACME_MAC_SSD on 12/13/17.
//  Copyright © 2017 ACME iOS TEAM. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        textFieldUserName.delegate = self
        textFieldPassword.delegate = self
        textFieldUserName.returnKeyType = .default
        textFieldPassword.returnKeyType = .default
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func buttonSignInClicked(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(controller, animated: true)
    }
    

}
