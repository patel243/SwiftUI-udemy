//
//  ViewController.swift
//  Swift-NoteTaker
//
//  Created by Kyle Meserve on 1/22/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var birthdayTextField: UITextField!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var birthdayLabel: UILabel!
  
  @IBAction func saveClicked(_ sender: Any) {
    
    
    UserDefaults.standard.set(nameTextField.text!, forKey: "name")
    UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
    
    
    nameLabel.text = "Name: \(nameTextField.text!)"
    birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
  }
  
  @IBAction func deleteClicked(_ sender: Any) {
    let storedName = UserDefaults.standard.object(forKey: "name")
    let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
    
    if (storedName as? String) != nil {
      UserDefaults.standard.removeObject(forKey: "name")
      nameLabel.text = "Name:"
    }
    
    if (storedBirthday as? String) != nil {
      UserDefaults.standard.removeObject(forKey: "birthday")
      birthdayLabel.text = "Birthday:"
    }
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    let storedName = UserDefaults.standard.object(forKey: "name")
    let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
    
    // Casting - as? vs as! force casting
    
    if let savedName = storedName as? String {
      nameLabel.text = "Name: \(savedName)"
    }
    if let savedBirthday = storedBirthday as? String {
      birthdayLabel.text = "Birthday: \(savedBirthday)"
    }

  }
  
  


}

