//
//  SecondView.swift
//  first-swiftUI-project
//
//  Created by Kyle Meserve on 2/23/20.
//  Copyright © 2020 Norien Games. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
      Image("kamelot").resizable().aspectRatio(contentMode: .fit).frame(width: (UIScreen.main.bounds.width * 0.8), height: (UIScreen.main.bounds.height * 0.3))
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
