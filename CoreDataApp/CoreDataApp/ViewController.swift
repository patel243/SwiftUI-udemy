//
//  ViewController.swift
//  CoreDataApp
//
//  Created by Kyle Meserve on 2/3/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  @IBOutlet weak var tableView: UITableView!
  // Variables to store information from Core Data
  var nameArray = [String]()
  var idArray = [UUID]()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    tableView.delegate = self
    tableView.dataSource = self
    
    
    // UI navigation bar access
    navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
    
    // get data
    getData()
    
  }
  
  // getting data from core data
  func getData() {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
    
      // Fetch Request
    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Entries")
    // if false, we won't get the objects as faults - more efficient to set up cache and use in background
    fetchRequest.returnsObjectsAsFaults = false
    
    do {
      // results returns an array - we need to cast it as an NSManagedObject
      let results = try context.fetch(fetchRequest)
      
      for result in results as! [NSManagedObject] {
        if let name = result.value(forKey: "name") as? String {
          self.nameArray.append(name)
        }
        if let id = result.value(forKey: "id") as? UUID {
          self.idArray.append(id)
        }
        
        // reloads data in tableView
        self.tableView.reloadData()
      }
      
      print("successfully retrieved data")
    } catch {
      print("error getting data")
    }
    
    
  }
  
  

  @objc func addButtonClicked(){
    performSegue(withIdentifier: "toSecondVC", sender: nil)
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return nameArray.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    cell.textLabel?.text = nameArray[indexPath.row]
    return cell
  }
  
  
}

