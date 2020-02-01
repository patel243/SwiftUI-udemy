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

  @IBAction func signupClicked(_ sender: Any) {
    
    if usernameText.text == "" {
      
      let alert = UIAlertController(title: "Error", message: "Username required", preferredStyle: UIAlertController.Style.alert)
      let okButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
        // button clicked
        print("button clicked")
      }
      alert.addAction(okButton)
      self.present(alert, animated: true, completion: nil)
      
    } else if (passwordText.text == "") || (passwordConfirmText.text == "") {
      
      let alert = UIAlertController(title: "Error", message: "Please enter both password fields", preferredStyle: UIAlertController.Style.alert)
      let okButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
        // button clicked
        print("button clicked")
      }
      alert.addAction(okButton)
      self.present(alert, animated: true, completion: nil)
      
    } else if (passwordText.text != passwordConfirmText.text) {
      
      let alert = UIAlertController(title: "Error", message: "Passwords don't match", preferredStyle: UIAlertController.Style.alert)
      let okButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
        // button clicked
        print("button clicked")
      }
      alert.addAction(okButton)
      self.present(alert, animated: true, completion: nil)
      
    } else {
      
      let alert = UIAlertController(title: "Error", message: "Account Created Successfully!", preferredStyle: UIAlertController.Style.alert)
      let okButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
        // button clicked
        print("button clicked")
      }
      alert.addAction(okButton)
      self.present(alert, animated: true, completion: nil)
      
    }
    
    
  }
  
}

