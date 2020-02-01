//
//  ViewControllerScreenTwo.swift
//  Swift-SegueApp
//
//  Created by Kyle Meserve on 1/26/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class ViewControllerScreenTwo: UIViewController {
  @IBOutlet weak var labelViewController2: UILabel!
  @IBOutlet weak var nameLabel: UILabel!
  
  var myName = ""

    override func viewDidLoad() {
      super.viewDidLoad()

      nameLabel.text = myName
    }
  
    
  
  
}
