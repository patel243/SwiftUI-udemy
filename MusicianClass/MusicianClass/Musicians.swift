//
//  File.swift
//  MusicianClass
//
//  Created by Kyle Meserve on 2/2/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import Foundation

// Enums - Declaring a type that ensures you can categorize them without typos/issues
enum MusicianType {
  case LeadGuitar
  case Vocalist
  case Drummer
  case Pianist
  case Bassist
}

class Musicians {
  
  // Properties
  var name : String
  var age : Int
  var instrument : String
  var type: MusicianType
  
  
  // Initializers are like constructors in Swift
  init(nameInit: String, ageInit: Int, instrumentInit: String, musicianTypeInit: MusicianType) {
    print("musician created")
    // in order to initialize variables without assigning them variables
    name = nameInit
    age = ageInit
    instrument = instrumentInit
    type = musicianTypeInit
  }
  
  func playMusic() {
    print("the \(type), \(name), is now using their \(instrument) to entertain the masses")
  }
  
  // can only be reached within the Musicians class. Can't be inherited or called from main.swift
  private func test() {
    print("test")
  }
  
}
