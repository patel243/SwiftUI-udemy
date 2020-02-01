//
//  ViewController.swift
//  Swift-SegueApp
//
//  Created by Kyle Meserve on 1/26/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var labelScreenOne: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBOutlet weak var nameText: UITextField!
  
  var myName = ""
  
  @IBAction func nextButton(_ sender: Any) {
    myName = nameText.text!
    
    performSegue(withIdentifier: "toSecondVC", sender: nil)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "toSecondVC" {
      // as
      let destinationVC = segue.destination as! ViewControllerScreenTwo
      destinationVC.myName = myName
      
    }
  }
}

