//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Sunghee Bang on 2021-11-10.
//

import SwiftUI

struct CalculatorButton: View {
    var label: String
    var color: Color
    
    var body: some View {
        Button(action: {
            // TODO Inform model of button press
        }, label: {
            ZStack{
                Circle()
                    .fill(color)
                
                Text(label)
                    .font(.title)
            }
        })
        // We want white color text for the button
        .accentColor(.white)
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(label: "1", color: .gray)
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
