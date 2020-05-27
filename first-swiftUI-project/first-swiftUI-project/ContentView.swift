//
//  ContentView.swift
//  first-swiftUI-project
//
//  Created by Kyle Meserve on 2/23/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//      VStack, HStack, and ZStack
      VStack{
        Text("Hello, World").padding()
        Text("Hello, SwiftUI!").font(.largeTitle).fontWeight(.semibold)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
