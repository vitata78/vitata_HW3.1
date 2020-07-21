//
//  ColorCircle.swift
//  vitata_HW3.1
//
//  Created by Andrew Tolstov on 7/21/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: UIColor
    let isActive: Bool
    
    var body: some View {
        Color(color)
            .opacity(isActive ? 1 : 0.2)
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .padding(.bottom, 15)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .orange, isActive: false)
    }
}
