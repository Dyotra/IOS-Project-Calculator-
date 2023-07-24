//
//  ViewController.swift
//  Calculator
//
//  Created by Bekpayev Dias on 15.07.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var workings: String = ""
    var history: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        makeConstraints()
    }
    
    func addToWorkings(value: String) {
        workings = workings + value
        workingLabel.text = workings
        history.append(value)
    }
    
    @objc func percentTap() {
        addToWorkings(value: "%")
    }
    
    @objc func divideTap() {
        addToWorkings(value: "/")
    }
    
    @objc func multiplyTap() {
        addToWorkings(value: "*")
    }
    
    @objc func minusTap() {
        addToWorkings(value: "-")
    }
    
    @objc func plusTap() {
        addToWorkings(value: "+")
    }
    
    @objc func oneTap() {
        addToWorkings(value: "1")
    }
    
    @objc func twoTap() {
        addToWorkings(value: "2")
    }
    
    @objc func threeTap() {
        addToWorkings(value: "3")
    }
    
    @objc func fourTap() {
        addToWorkings(value: "4")
    }
    
    @objc func fiveTap() {
        addToWorkings(value: "5")
    }
    
    @objc func sixTap() {
        addToWorkings(value: "6")
    }
    
    @objc func sevenTap() {
        addToWorkings(value: "7")
    }
    
    @objc func eightTap() {
        addToWorkings(value: "8")
    }
    
    @objc func nineTap() {
        addToWorkings(value: "9")
    }
    
    @objc func zeroTap() {
        addToWorkings(value: "0")
    }
    
    @objc func commaTap() {
        addToWorkings(value: ",")
    }
    
    @objc func clearByOneTap() {
        if workings.isEmpty {
            workingLabel.text = "0"
        }
        else {
            workings.removeLast()
            workingLabel.text = workings
        }
    }
    
    @objc func clearAll() {
        workings = ""
        resultLabel.text = "0"
        workingLabel.text = "0"
    }
    
    func formatResult(result: Double) -> String {
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", result)
        }
        else {
            return String(format: "%.2f", result)
        }
    }
    
    func validInput() ->Bool {
        var count = 0
        var funcCharIndexes = [Int]()
        for char in workings {
            if specialCharacter(char: char) {
                funcCharIndexes.append(count)
            }
            count += 1
        }
        var previous: Int = -1
        for index in funcCharIndexes {
            if index == 0 {
                return false
            }
            if index == workings.count - 1 {
                return false
            }
            if (previous != -1) {
                if index - previous == 1 {
                    return false
                }
            }
            previous = index
        }
        return true
    }
    
    func specialCharacter (char: Character) -> Bool {
        if char == "*" {
            return true
        }
        if char == "/" {
            return true
        }
        if char == "+" {
            return true
        }
        return false
    }
    
    @objc func equalsTap() {
        if validInput() {
            workings = workings.replacingOccurrences(of: "/", with: "*1.0/")
            let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkedWorkingsForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            resultLabel.text = resultString
        }
        else {
            let alert = UIAlertController(
                title: "Invalid Input",
                message: "Calculator unable to do math based on input",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func clearHistory() {
        history.removeAll()
    }
    
    @objc func historyTap() {
        let historyString = history.joined()
        
        let alert = UIAlertController(title: "History", message: historyString, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Clear History", style: .destructive, handler: { _ in
               self.clearHistory()
           }))
        
        alert.addAction(UIAlertAction(title: "Okay", style: .default))
        self.present(alert, animated: true, completion: nil)
    }
    
    func setupScene() {
        view.addSubview(resultLabel)
        view.addSubview(workingLabel)
        view.addSubview(number0Button)
        view.addSubview(number1Button)
        view.addSubview(number2Button)
        view.addSubview(number3Button)
        view.addSubview(number4Button)
        view.addSubview(number5Button)
        view.addSubview(number6Button)
        view.addSubview(number7Button)
        view.addSubview(number8Button)
        view.addSubview(number9Button)
        view.addSubview(plusButton)
        view.addSubview(minusButton)
        view.addSubview(multiplyButton)
        view.addSubview(divideButton)
        view.addSubview(equalButton)
        view.addSubview(commaButton)
        view.addSubview(historyButton)
        view.addSubview(clearAllButton)
        view.addSubview(percentButton)
        view.addSubview(clearByOneButton)
        clearAllButton.addTarget(self, action: #selector(clearAll), for: .touchUpInside)
        percentButton.addTarget(self, action: #selector(percentTap), for: .touchUpInside)
        divideButton.addTarget(self, action: #selector(divideTap), for: .touchUpInside)
        multiplyButton.addTarget(self, action: #selector(multiplyTap), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(minusTap), for: .touchUpInside)
        plusButton.addTarget(self, action: #selector(plusTap), for: .touchUpInside)
        number1Button.addTarget(self, action: #selector(oneTap), for: .touchUpInside)
        number2Button.addTarget(self, action: #selector(twoTap), for: .touchUpInside)
        number3Button.addTarget(self, action: #selector(threeTap), for: .touchUpInside)
        number4Button.addTarget(self, action: #selector(fourTap), for: .touchUpInside)
        number5Button.addTarget(self, action: #selector(fiveTap), for: .touchUpInside)
        number6Button.addTarget(self, action: #selector(sixTap), for: .touchUpInside)
        number7Button.addTarget(self, action: #selector(sevenTap), for: .touchUpInside)
        number8Button.addTarget(self, action: #selector(eightTap), for: .touchUpInside)
        number9Button.addTarget(self, action: #selector(nineTap), for: .touchUpInside)
        number0Button.addTarget(self, action: #selector(zeroTap), for: .touchUpInside)
        clearByOneButton.addTarget(self, action: #selector(clearByOneTap), for: .touchUpInside)
        equalButton.addTarget(self, action: #selector(equalsTap), for: .touchUpInside)
        commaButton.addTarget(self, action: #selector(commaTap), for: .touchUpInside)
        historyButton.addTarget(self, action: #selector(historyTap), for: .touchUpInside)
    }
}



