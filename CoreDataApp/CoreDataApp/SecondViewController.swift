//
//  SecondViewController.swift
//  CoreDataApp
//
//  Created by Kyle Meserve on 2/3/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import UIKit
import CoreData

// picker controller and navigation controller required for the selection of an image and the navigation done with that picker
class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var nameText: UITextField!
  @IBOutlet weak var dateText: UITextField!
  @IBOutlet weak var ratingText: UITextField!
  
  
  override func viewDidLoad() {
        super.viewDidLoad()

        
      // imageView gesture recognizer
    imageView.isUserInteractionEnabled = true
    let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
    imageView.addGestureRecognizer(imageTapRecognizer)
    
    
      // This hides the keyboard when you tap off of a text box
    let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
    
      // assigning the above gesture recognizer to the view itself so tapping outside the text boxes hides the keyboard
    view.addGestureRecognizer(gestureRecognizer)
    }
    

  @IBAction func saveButtonClicked(_ sender: Any) {

    // SAVING data to Core Data
    
    // Talking to the Core Data via App Delegate
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
    
    let newEntry = NSEntityDescription.insertNewObject(forEntityName: "Entries", into: context)
    
    
    // Attributes
    newEntry.setValue(nameText.text!, forKey: "name")
    newEntry.setValue(dateText.text!, forKey: "date")
    if let rating = Int(ratingText.text!) {
      newEntry.setValue(rating, forKey: "rating")
    }
    newEntry.setValue(UUID(), forKey: "id")
    // compresses image with this
    let image = imageView.image?.jpegData(compressionQuality: 0.5)
    
    newEntry.setValue(image, forKey: "image")
    
    do {
      try context.save()
      print("success")
    } catch {
      print("error")
    }
    
    
  }
  
  @objc func selectImage() {
    
    let picker = UIImagePickerController()
    // need to set picker a delegate to this view controller
    picker.delegate = self
    // Photo Library connection
    picker.sourceType = .photoLibrary
    // This lets the user edit their photo after choosing it
    picker.allowsEditing = true
    // need to present the picker like we did with alerts
    present(picker, animated: true, completion: nil)
    
  }
  
  // didFinishPickingMediaWithInfo required after picking photo from image library
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    imageView.image = info[.editedImage] as? UIImage // info comes from this function automatically
    // dismissing picker controller to go back to view controller
    self.dismiss(animated: true, completion: nil)
  }
  
  // This is what actually hides the keyboard
  @objc func hideKeyboard() {
    view.endEditing(true)
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
