//
//  StartButton.swift
//  vitata_HW3.1
//
//  Created by Andrew Tolstov on 7/21/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import SwiftUI

struct StartButton: View {
    
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            
            Text(title)
                .font(.largeTitle)
            
        }
        .buttonStyle(StartButtonStyle())
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(title: "START", action: {})
    }
}
