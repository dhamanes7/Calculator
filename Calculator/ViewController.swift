//
//  ViewController.swift
//  Calculator
//
//  Created by Shubham Dhamane on 13/07/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var input: UILabel!
    @IBOutlet weak var output: UILabel!
    var enteredInput:String = ""
    var lastInput:String = ""
    let numbers:[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    let functions:[String] = ["+","-","/","*","!","%","√","3√","π","^2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func allClear(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func backspace(_ sender: Any) {
        lastInput = String(enteredInput.popLast()!)
        input.text = enteredInput
        
    }
    
    @IBAction func calculateAnswer(_ sender: Any) {
        if enteredInput.contains("√"){
            var x: Double = 0   // number storage
            enteredInput.removeFirst()
            let answer: String = equationCalc(equation: enteredInput)
            x = Double(answer)!
            output.text = String(sqrt(x))
           
            
        }
        else if enteredInput.contains("3√"){
            var x: Double = 0   // number storage
            enteredInput.removeFirst()
            let answer: String = equationCalc(equation: enteredInput)
            if 
            x = Double(answer)!
            output.text = String(cbrt(x))
         }
        else {
            
        }
        
    }
    
    func equationCalc(equation: String) -> String{
        if (enteredInput.contains("%") || enteredInput.contains("!") || enteredInput.contains("√") || enteredInput.contains("3√") || enteredInput.contains("^2") || enteredInput.contains("π") ){
//           output.text = "special char"
            return "Special char"
           
       }
       else{
           let expression = NSExpression(format: equation)
           let result = expression.expressionValue(with: nil, context: nil) as! Double
           return String(format: "%.2f", result)
       }
 
    }
    
    @IBAction func addition(_ sender: Any) {
        addInput(value: "+")
    }
    
    
    @IBAction func subtraction(_ sender: Any) {
        addInput(value: "-")
    }
    
    
    @IBAction func multiplication(_ sender: Any) {
        addInput(value: "*")
    }
    
    @IBAction func division(_ sender: Any) {
        addInput(value: "/")
    }
    
    @IBAction func percentage(_ sender: Any) {
        addInput(value: "%")
    }
    
    
    @IBAction func sqaureroot(_ sender: Any) {
        if enteredInput.isEmpty{
        addInput(value: "√")
        }
    }
    
    
    @IBAction func cuberoot(_ sender: Any) {
        if enteredInput.isEmpty{
        addInput(value: "3√")
        }
    }
    
    
    @IBAction func square(_ sender: Any) {
        addInput(value: "^2")
    }
    
    @IBAction func pie(_ sender: Any) {
        addInput(value: "π")
    }
    
    
    @IBAction func addFactorial(_ sender: Any) {
        addInput(value: "!")
    }
    
    @IBAction func addZero(_ sender: Any) {
        addInput(value: "0")
    }
    
    
    @IBAction func addPoint(_ sender: Any) {
        addInput(value: ".")
    }
    
    
    @IBAction func addOne(_ sender: Any) {
        addInput(value: "1")
    }
    
    @IBAction func addTwo(_ sender: Any) {
        addInput(value: "2")
    }
    
        
    @IBAction func addThree(_ sender: Any) {
        addInput(value: "3")
    }
    
    
    @IBAction func addFour(_ sender: Any) {
        addInput(value: "4")
    }
    
    
    @IBAction func addFive(_ sender: Any) {
        addInput(value: "5")
    }
    
    @IBAction func addSix(_ sender: Any) {
        addInput(value: "6")
    }
    
    @IBAction func addSeven(_ sender: Any) {
        addInput(value: "7")
    }
    
    
    @IBAction func addEight(_ sender: Any) {
        addInput(value: "8")
    }
    
    @IBAction func addNine(_ sender: Any) {
        addInput(value: "9")
    }
    
    
    func clearAll(){
        enteredInput = ""
        lastInput = ""
        input.text = ""
        output.text = ""
    }
    
    func addInput(value: String){
        enteredInput = enteredInput + value
        lastInput = value
        input.text = enteredInput
    }
}

