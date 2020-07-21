//
//  ContentView.swift
//  vitata_HW3.1
//
//  Created by Andrew Tolstov on 7/21/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var startButtonTitle: String = "START"
    
    @State private var redIsActive: Bool = false
    @State private var yellowIsActive: Bool = false
    @State private var greenIsActive: Bool = false
    
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        
        ZStack {
            
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                ColorCircle(color: .red, isActive: redIsActive)
                ColorCircle(color: .yellow, isActive: yellowIsActive)
                ColorCircle(color: .green, isActive: greenIsActive)
                Spacer()
                StartButton(title: startButtonTitle, action: {self.startButtonPressed()})
                
            }
            .padding(.top, 20)
            
        }
    }
    
    
    private func startButtonPressed() {
        
        startButtonTitle = "NEXT"
        
        switch currentLight {
        case .red:
            greenIsActive = false
            redIsActive = true
            currentLight = .yellow
        case .yellow:
            redIsActive = false
            yellowIsActive = true
            currentLight = .green
        case .green:
            yellowIsActive = false
            greenIsActive = true
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


