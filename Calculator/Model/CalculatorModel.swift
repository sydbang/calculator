//
//  Calculator.swift
//  Calculator
//
//  Created by Sunghee Bang on 2021-11-10.
//

import Foundation

class CalculatorModel: ObservableObject {
    
    // Used to update the UI
    @Published var displayValue = "0"
    
    // Store the current operator
    var currentOp: Operator?
    
    // Current number selected
    var currentNumber: Double? = 0
    
    // Previous number selected
    var previousNumber: Double?
    
    // Flag for equal press
    var equaled = false
    
    // How many decimal places have they typed
    var decimalPlace = 0
    
    // Select the appropriate function based on the label of the button pressed
    func buttonPressed(label: String) {
        if label == "CE" {
            displayValue = "0"
            reset()
        } else if label == "=" {
            equalsClicked()
        } else if label == "." {
            decimalClicked()
        } else if let value = Double(label) {
            numberPressed(value: value)
        } else {
            operatorPressed(op: Operator())
        }
    }
    
    // This resets the state of the calculator
    func reset() {
        currentOp = nil
        currentNumber = 0
        previousNumber = nil
        equaled = false
        decimalPlace = 0
    }
    
    func equalsClicked() {
        
    }
    
    func decimalClicked() {
        
    }
    
    func numberPressed(value: Double) {
        
    }
    
    func operatorPressed(op: Operator) {
        
    }
    
}
