//
//  ViewController.swift
//  CoreDataApp
//
//  Created by Kyle Meserve on 2/3/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    // UI navigation bar access
    navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
    
  }

  @objc func addButtonClicked(){
    performSegue(withIdentifier: "toSecondVC", sender: nil)
  }
  
  
}

