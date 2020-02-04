//
//  SecondViewController.swift
//  CoreDataApp
//
//  Created by Kyle Meserve on 2/3/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var nameText: UITextField!
  @IBOutlet weak var dateText: UITextField!
  @IBOutlet weak var ratingText: UITextField!
  
  
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  @IBAction func saveButtonClicked(_ sender: Any) {
    print("saveButtonFixed")
    
  }
  /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
