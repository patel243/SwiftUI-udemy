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
  }
  
  @IBOutlet weak var topInput: UITextField!
  
  @IBOutlet weak var bottomInput: UITextField!
  
  @IBOutlet weak var answerText: UILabel!
  
  
  @IBAction func add(_ sender: Any) {
    let topNumber = Int(topInput.text!)
    let bottomNumber = Int(bottomInput.text!)
    
    let answer = topNumber! + bottomNumber!
    
    answerText.text = String(answer)
  }
  
  @IBAction func subtract(_ sender: Any) {
    let topNumber = Int(topInput.text!)
    let bottomNumber = Int(bottomInput.text!)
    
    let answer = topNumber! - bottomNumber!
    
    answerText.text = String(answer)
  }
  
  @IBAction func multiply(_ sender: Any) {
    let topNumber = Int(topInput.text!)
    let bottomNumber = Int(bottomInput.text!)
    
    let answer = topNumber! * bottomNumber!
    
    answerText.text = String(answer)
  }
  
  @IBAction func divide(_ sender: Any) {
    let topNumber = Int(topInput.text!)
    let bottomNumber = Int(bottomInput.text!)
    
    let answer = topNumber! / bottomNumber!
    
    answerText.text = String(answer)
  }
  
}

