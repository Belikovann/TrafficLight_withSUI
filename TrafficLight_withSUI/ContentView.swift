//
//  ContentView.swift
//  TrafficLight_withSUI
//
//  Created by Аня Беликова on 20.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack() {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 15.0) {
                CircleView()
                    .foregroundColor(.red)
                CircleView()
                    .foregroundColor(.yellow)
                CircleView()
                    .foregroundColor(.green)
            }
            Button("START") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
