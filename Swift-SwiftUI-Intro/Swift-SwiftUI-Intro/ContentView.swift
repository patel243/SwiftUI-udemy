//
//  ContentView.swift
//  Swift-SwiftUI-Intro
//
//  Created by Kyle Meserve on 1/21/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack{
        Text("Hello, SwiftUI!")
        Spacer()
        Text("Hello, again.")
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
