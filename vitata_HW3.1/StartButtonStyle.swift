//
//  StartButtonStyle.swift
//  vitata_HW3.1
//
//  Created by Andrew Tolstov on 7/21/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import SwiftUI

struct StartButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            
            .frame(width: 200, height: 70)
            .foregroundColor(.white)
            
            .background(configuration.isPressed ? Color.yellow : .blue)
        
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(Color.white, lineWidth: 4))

            .padding(.bottom, 20)
    }
}
