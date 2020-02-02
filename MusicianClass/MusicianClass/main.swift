//
//  main.swift
//  MusicianClass
//
//  Created by Kyle Meserve on 2/2/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import Foundation

let kyle = Musicians(nameInit: "Kyle", ageInit: 26, instrumentInit: "Piano", musicianTypeInit: .Pianist)

//kyle.age = 26
//kyle.instrument = "piano"
//kyle.name = "kyle"

print(kyle.age, kyle.instrument, kyle.name, kyle.type)
kyle.playMusic()


let kirk = SuperMusician(nameInit: "Kirk", ageInit: 40, instrumentInit: "Guitar", musicianTypeInit: .LeadGuitar)
kirk.playMusic()
kirk.sing()
