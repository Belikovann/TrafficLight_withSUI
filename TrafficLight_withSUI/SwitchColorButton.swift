//
//  SwitchColorButton.swift
//  TrafficLight_withSUI
//
//  Created by Аня Беликова on 22.04.2023.
//

import SwiftUI

struct SwitchColorButton: View {
    
    @State var title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action ) {
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding(.horizontal, 100)
                .background(.blue)
                .cornerRadius(10)
        }
    }
}

struct SwitchColorButton_Previews: PreviewProvider {
    static var previews: some View {
        SwitchColorButton(title: "START", action: {})
    }
}
