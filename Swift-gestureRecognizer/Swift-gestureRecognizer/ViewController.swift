//
//  ViewController.swift
//  Swift-gestureRecognizer
//
//  Created by Kyle Meserve on 2/1/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var myLabel: UILabel!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    imageView.isUserInteractionEnabled = true
    
    
    let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
    
    imageView.addGestureRecognizer(gestureRecognizer)
    
  }

  @objc func changePic() {
    
    if imageView.image == UIImage(named: "Online-review-Kamelot") {
      imageView.image = UIImage(named: "kamelot2")
      myLabel.text = "Kamelot Band"
    } else {
      imageView.image = UIImage(named: "Online-review-Kamelot")
      myLabel.text = "Album Cover"
    }
    
  }

}

