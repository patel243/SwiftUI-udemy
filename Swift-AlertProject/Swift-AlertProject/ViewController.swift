//
//  ViewController.swift
//  Swift-AlertProject
//
//  Created by Kyle Meserve on 2/1/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var usernameText: UITextField!
  @IBOutlet weak var passwordText: UITextField!
  @IBOutlet weak var passwordConfirmText: UITextField!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  func alertSystem (message: String, title: String) -> Void {
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
    let okButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel, handler: nil)
    alert.addAction(okButton)
    self.present(alert, animated: true, completion: nil)
  }

  @IBAction func signupClicked(_ sender: Any) {
    
    if usernameText.text == "" {
      alertSystem(message: "Username Required", title: "Error")
    } else if (passwordText.text == "") || (passwordConfirmText.text == "") {
      alertSystem(message: "Both Passwords Required", title: "Error")
    } else if (passwordText.text != passwordConfirmText.text) {
      alertSystem(message: "Passwords Don't Match", title: "Error")
    } else {
      alertSystem(message: "Account Created Successfully", title: "Success")
    }
    
    
  }
  
}

