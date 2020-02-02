//
//  Simpson.swift
//  SimpsonBook
//
//  Created by Kyle Meserve on 2/2/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import Foundation
import UIKit

enum SimpsonCharacter {
  case Bart
  case Homer
  case Marge
  case Lisa
  case Moe
  case Ned
}

class Simpson {
  
  var age: Int
  var name: String
  var occupation: String
  var character: SimpsonCharacter
  var image = UIImage()
  
  init(age: Int, name: String, occupation: String, character: SimpsonCharacter, image: UIImage) {
    self.age = age
    self.name = name
    self.occupation = occupation
    self.character = character
    self.image = image
  }
  
  
}
