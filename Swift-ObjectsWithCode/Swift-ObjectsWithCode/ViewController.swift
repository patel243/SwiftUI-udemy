//
//  ViewController.swift
//  Swift-ObjectsWithCode
//
//  Created by Kyle Meserve on 1/21/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let myLabel = UILabel()
  let myButton = UIButton()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let width = view.frame.size.width
    let height = view.frame.size.height
    
    myLabel.text = "Test Label"
    myLabel.textAlignment = .center
//    This is all mathematically figuring out the screen width and then centering this text.
//    Udemy lecture 39 for more details if you're confused looking at this.
    myLabel.frame = CGRect(
      x: width * 0.5 - (width * 0.8 / 2),
      y: height * 0.5 - 25,
      width: width * 0.8,
      height: 50
    )
    view.addSubview(myLabel)
    
    myButton.setTitle("Test Button", for: UIControl.State.normal)
    myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
    myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.7 - 50, width: 200, height: 100)
    view.addSubview(myButton)
    
    // Target of self = ViewController (this class)
    // had to have the action be an objective c function
    // for: touchUpInside is the event listener if you tap inside it
    myButton.addTarget(self, action: #selector(ViewController.buttonPress), for: UIControl.Event.touchUpInside)
    
    
  }

  var num: Int = 0
  
  @objc func buttonPress() {
    num += 1
    myLabel.text = "Tapped " + String(num) + " time(s)."
  }
  

}

