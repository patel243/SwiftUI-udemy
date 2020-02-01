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
  @IBOutlet weak var nameText: UITextField!
  
  var myName = ""
  
  // This is called first, but only the first time you go to this view. Afterwards, only calls viewWillAppear and viewDidAppear
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    // Lifecycle
    print("viewDidLoad function called")
  }
  // Lifecycle testing
  
  // As soon as the view does disappear, this is called.
  override func viewDidDisappear(_ animated: Bool) {
    print("viewDidDisappear function called")
  }
  
  // The moment you start leaving this view, this is called.
  override func viewWillDisappear(_ animated: Bool) {
    print("viewWillDisappear function called")
  }

  // This gets called immediately after the view loads
  override func viewWillAppear(_ animated: Bool) {
    print("viewWillAppear called")
    nameText.text = ""
  }
  
  // This gets called as soon as it appears on screen
  override func viewDidAppear(_ animated: Bool) {
    print("viewDidAppear called")
  }
  
  
  
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

