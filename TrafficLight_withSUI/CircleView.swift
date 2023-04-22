//
//  CircleView.swift
//  TrafficLight_withSUI
//
//  Created by Аня Беликова on 20.04.2023.
//

import SwiftUI


struct CircleView: View {

    var body: some View {
        Circle()
            .frame(width: 110, height: 110)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .opacity(0.3)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
