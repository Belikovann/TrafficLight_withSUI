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
    @State private var lightIsOn: CGFloat = 1
    
    
    var body: some View {
        ZStack() {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 15.0) {
                redLight
                    .foregroundColor(.red)
                yellowLight
                    .foregroundColor(.yellow)
                greenLight
                    .foregroundColor(.green)
            }
            .padding(.bottom, 300)
            
            Button(action: switchButton) {
                Text(" START ")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(.horizontal)
                    .background(.blue)
                    .cornerRadius(10)
                    .frame(maxWidth: .greatestFiniteMagnitude)
            }
            .padding(.top, 600)
        }
        
    }
}

extension ContentView {
    private func switchButton() {
        
        switch currentLight {
        case .red:
            _ = greenLight.opacity(0) as! CircleView
            _ = redLight.opacity(lightIsOn)
            currentLight = .yellow
        case .yellow:
            _ = redLight.opacity(0)
            _ = yellowLight.opacity(lightIsOn)
            currentLight = .green
        case .green:
            _ = greenLight.opacity(lightIsOn)
            _ = yellowLight.opacity(0)
            currentLight = .red
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
