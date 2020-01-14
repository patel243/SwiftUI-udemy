//
//  ViewController.swift
//  Bad Calculator
//
//  Created by Kyle Meserve on 1/13/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    setLabel()
  }
  
  @IBOutlet weak var topInput: UITextField!
  
  @IBOutlet weak var bottomInput: UITextField!
  
  @IBOutlet weak var answerText: UILabel!
  
  
  var labelText = "answer will go here"
  
  func setLabel () {
    let text: String? = topInput.text
    let bottomText: String? = bottomInput.text
    
    if text != nil && bottomText != nil {
      answerText.text = "Top Input is \(text) and Bottom Input is \(bottomText)."
    } else {
      answerText.text = labelText
    }
  }
  
  
  
}

