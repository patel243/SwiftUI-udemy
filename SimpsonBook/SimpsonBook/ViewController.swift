//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Kyle Meserve on 2/2/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  var simpsons: [Simpson] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    tableView.dataSource = self
    tableView.delegate = self
    
    // Simpson Character Creation
    let homer = Simpson(age: 39, name: "Homer Simpson", occupation: "Nuclear Safety Inspecter", character: .Homer, image: UIImage(named: "homerSimpson")!)
    let marge = Simpson(age: 36, name: "Marge Simpson", occupation: "Housewife", character: .Marge, image: UIImage(named: "margeSimpson")!)
    let lisa = Simpson(age: 8, name: "Lisa Simpson", occupation: "Babysitter, Hall monitor, CTU Agent, Student", character: .Lisa, image: UIImage(named: "lisaSimpson")!)
    let ned = Simpson(age: 60, name: "Ned Sanders", occupation: "Entrepreneur, Owner of Leftorium, Owner of FlanCrest Enterprises", character: .Ned, image: UIImage(named: "nedFlanders")!)
    let bart = Simpson(age: 10, name: "Bart Simpson", occupation: "Student", character: .Bart, image: UIImage(named: "bartSimpson")!)
    let moe = Simpson(age: 112, name: "Moe Szyslak", occupation: "Wildlife Smuggler, Retired TV Actor, Bartender", character: .Moe, image: UIImage(named: "moeSzyslak")!)
    
    simpsons = [homer, marge, lisa, ned, bart, moe]
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return simpsons.count - 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    cell.textLabel?.text = "Homer Simpson"
    return cell
  }
  

//  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    <#code#>
//  }
  

}

