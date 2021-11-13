//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Sunghee Bang on 2021-11-10.
//

import SwiftUI

struct CalculatorButton: View {
    @EnvironmentObject var calculator : CalculatorModel
    
    var label: String
    var color: Color
    
    var body: some View {
        
        Button(action: {
            // Inform model of button press
            calculator.buttonPressed(label: label)
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
            .environmentObject(CalculatorModel())
    }
}
