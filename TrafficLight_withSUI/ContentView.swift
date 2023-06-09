//
//  ContentView.swift
//  TrafficLight_withSUI
//
//  Created by Аня Беликова on 20.04.2023.
//

import SwiftUI

enum CurrentLight {
    case red,
         yellow,
         green
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    @State private var redLight = CircleView()
    @State private var yellowLight = CircleView()
    @State private var greenLight = CircleView()
    @State private var buttonTitle = "Start"
    
    var body: some View {
        ZStack() {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 15.0) {
                redLight
                    .foregroundColor(.red)
                    .opacity(currentLight == .red ? 1 : 0.3)
                yellowLight
                    .foregroundColor(.yellow)
                    .opacity(currentLight == .yellow ? 1 : 0.3)
                greenLight
                    .foregroundColor(.green)
                    .opacity(currentLight == .green ? 1 : 0.3)
                SwitchColorButton(title: buttonTitle,
                                  action: switchColorButton)
                    .padding(.top, 200)
                }
                .padding()
            }
        }
    }


extension ContentView {
    private func switchColorButton() {
        if buttonTitle == "Start" {
            buttonTitle = "Next"
        }
        
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

