//
//  ViewController.swift
//  Calculator
//
//  Created by r86 on 10/10/23.
//

import UIKit

class CalcyPage: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var workingLabel: UILabel!
    
    var valueForWorking = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setValue()
    }
    
    func setValue() {
        valueForWorking = ""
        resultLabel.text = ""
        workingLabel.text = ""
    }
    
    @IBAction func acButtonAction(_ sender: Any) {
        setValue()
    }
    
    func valueFinder(value:String){
        valueForWorking = valueForWorking + value
        workingLabel.text = valueForWorking
    }
    
    @IBAction func minButtonAction(_ sender: Any) {
        valueFinder(value: "-")
    }
    
    @IBAction func plusButtonAction(_ sender: Any) {
        valueFinder(value: "+")
    }
    
    @IBAction func equalButtonAction(_ sender: Any) {
        
        if validInput() {
            let checkWorkingForPercent = valueForWorking.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkWorkingForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formateResult(result: result)
            resultLabel.text = resultString
        }else {
            resultLabel.text = "Invalid Input"
        }
    }
    
    func formateResult(result:Double) -> String {
        if result.truncatingRemainder(dividingBy: 1) == 0{
            return String(format: "%.0f",result)
        }else {
            return String(format: "%.2f",result)
        }
    }
    
    func validInput() -> Bool{
        
        var count = 0
        var funcCharIndexes = [Int]()
        
        for char in valueForWorking {
            if specialChar(char: char) {
                funcCharIndexes.append(count)
            }
            count += 1
        }
        
        var previous = -1
        
        for index in funcCharIndexes {
            if index == 0 {
                return false
            }
            if index == valueForWorking.count - 1 {
                return false
            }
            if previous != -1 {
                if index - previous == 1 {
                    return false
                }
            }
            previous = index
        }
        return true
    }
    
    func specialChar(char: Character) -> Bool {
        if char == "*" {
            return true
        }
        else if char == "/" {
            return true
        }
        else if char == "%" {
            return true
        }
        else if char == "+" {
            return true
        }
        else if char == "-" {
            return true
        }
        else {
            return false
        }
    }
    
    @IBAction func mulButtonAction(_ sender: Any) {
        valueFinder(value: "*")
    }
    
    @IBAction func deleteButtonAction(_ sender: Any) {
        if !valueForWorking.isEmpty {
            valueForWorking.removeLast()
            workingLabel.text = valueForWorking
        }
    }
    
    @IBAction func moduleButtonAction(_ sender: Any) {
        valueFinder(value: "%")
    }
    
    @IBAction func devideButtonAction(_ sender: Any) {
        valueFinder(value: "/")
    }
    
    @IBAction func dotButtonAction(_ sender: Any) {
        valueFinder(value: ".")
    }
    
    @IBAction func zeroButtonAction(_ sender: Any) {
        valueFinder(value: "0")
    }
    
    @IBAction func oneButtonAction(_ sender: Any) {
        valueFinder(value: "1")
    }
    
    @IBAction func twoButtonAction(_ sender: Any) {
        valueFinder(value: "2")
    }
    
    @IBAction func threeButtonAction(_ sender: Any) {
        valueFinder(value: "3")
    }
    
    @IBAction func fourButtonAction(_ sender: Any) {
        valueFinder(value: "4")
    }
    
    @IBAction func fiveButtonAction(_ sender: Any) {
        valueFinder(value: "5")
    }
    
    @IBAction func sixButtonAction(_ sender: Any) {
        valueFinder(value: "6")
    }
    
    @IBAction func sevenButtonAction(_ sender: Any) {
        valueFinder(value: "7")
    }
    
    @IBAction func eightButtonAction(_ sender: Any) {
        valueFinder(value: "8")
    }
    
    @IBAction func nineButtonAction(_ sender: Any) {
        valueFinder(value: "9")
    }
    
}

