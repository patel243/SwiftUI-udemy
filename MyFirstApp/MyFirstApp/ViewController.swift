//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Kyle Meserve on 1/11/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var imageView: UIImageView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    
  }
  
  @IBAction func changeButton(_ sender: Any) {
    if imageView.image == UIImage(named: "kamelot")  {
      imageView.image = UIImage(named: "Online-review-Kamelot")
    } else {
      imageView.image = UIImage(named: "kamelot")
    }
  }


}

