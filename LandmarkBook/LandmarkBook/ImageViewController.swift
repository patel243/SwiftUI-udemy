//
//  ImageViewController.swift
//  LandmarkBook
//
//  Created by Kyle Meserve on 2/2/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var imageLabel: UILabel!
  
  var landmarkName = ""
  var landmarkImage = UIImage()
  
  override func viewDidLoad() {
    super.viewDidLoad()

    imageLabel.text = landmarkName
    imageView.image = landmarkImage
  }
    

}
