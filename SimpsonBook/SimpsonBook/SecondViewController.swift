//
//  SecondViewController.swift
//  SimpsonBook
//
//  Created by Kyle Meserve on 2/2/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var simpsonName: UILabel!
  @IBOutlet weak var simpsonJob: UILabel!
  @IBOutlet weak var simpsonAge: UILabel!
  
  var selectedSimpson: Simpson?
  
  
  override func viewDidLoad() {
    super.viewDidLoad()

    simpsonName.text = selectedSimpson?.name
    simpsonJob.text = selectedSimpson?.occupation
    simpsonAge.text = String(selectedSimpson!.age)
    imageView.image = selectedSimpson?.image
  }
    

}
