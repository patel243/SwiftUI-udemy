//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Kyle Meserve on 2/2/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import Foundation

// This is the syntax for extending a class - Inheriting all from Musicians class
class SuperMusician : Musicians {
  
  func sing() {
    print("This performer is a super-musician. Their music career will take off soon.")
  }
  
  override func playMusic() {
    print("This super-musician, \(name), is absolutely incredible with their \(instrument). The minute they started performing, the audience went wild.")
  }
  
}
