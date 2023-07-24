//
//  Constraints.swift
//  Calculator
//
//  Created by Bekpayev Dias on 21.07.2023.
//

extension ViewController {
    
    func makeConstraints() {
        
        
        number0Button.snp.makeConstraints() {
            $0.bottom.equalToSuperview().inset(50)
            $0.left.equalTo(commaButton.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        commaButton.snp.makeConstraints() {
            $0.bottom.equalToSuperview().inset(50)
            $0.left.equalToSuperview().inset(25)
            $0.height.width.equalTo(80)
        }
        
        equalButton.snp.makeConstraints() {
            $0.bottom.equalToSuperview().inset(50)
            $0.left.equalTo(number0Button.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        number1Button.snp.makeConstraints() {
            $0.bottom.equalTo(commaButton.snp.top).offset(-10)
            $0.left.equalToSuperview().inset(25)
            $0.height.width.equalTo(80)
        }
        
        number2Button.snp.makeConstraints() {
            $0.bottom.equalTo(number1Button)
            $0.left.equalTo(number1Button.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        number3Button.snp.makeConstraints() {
            $0.bottom.equalTo(number1Button)
            $0.left.equalTo(number2Button.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        plusButton.snp.makeConstraints() {
            $0.bottom.equalTo(commaButton)
            $0.left.equalTo(equalButton.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        number4Button.snp.makeConstraints() {
            $0.bottom.equalTo(number1Button.snp.top).offset(-10)
            $0.left.equalToSuperview().inset(25)
            $0.height.width.equalTo(80)
        }
        
        number5Button.snp.makeConstraints() {
            $0.bottom.equalTo(number4Button)
            $0.left.equalTo(number4Button.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        number6Button.snp.makeConstraints() {
            $0.bottom.equalTo(number4Button)
            $0.left.equalTo(number5Button.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        minusButton.snp.makeConstraints() {
            $0.bottom.equalTo(number1Button)
            $0.left.equalTo(number3Button.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        number7Button.snp.makeConstraints() {
            $0.bottom.equalTo(number4Button.snp.top).offset(-10)
            $0.left.equalToSuperview().inset(25)
            $0.height.width.equalTo(80)
        }
        
        number8Button.snp.makeConstraints() {
            $0.bottom.equalTo(number7Button)
            $0.left.equalTo(number7Button.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        number9Button.snp.makeConstraints() {
            $0.bottom.equalTo(number7Button)
            $0.left.equalTo(number8Button.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        multiplyButton.snp.makeConstraints() {
            $0.bottom.equalTo(number4Button)
            $0.left.equalTo(number6Button.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        historyButton.snp.makeConstraints() {
            $0.bottom.equalTo(number7Button.snp.top).offset(-10)
            $0.left.equalToSuperview().inset(25)
            $0.height.width.equalTo(80)
        }
        
        clearAllButton.snp.makeConstraints() {
            $0.bottom.equalTo(historyButton)
            $0.left.equalTo(historyButton.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        percentButton.snp.makeConstraints() {
            $0.bottom.equalTo(historyButton)
            $0.left.equalTo(clearAllButton.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        divideButton.snp.makeConstraints() {
            $0.bottom.equalTo(number7Button)
            $0.left.equalTo(number9Button.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        clearByOneButton.snp.makeConstraints() {
            $0.bottom.equalTo(historyButton)
            $0.left.equalTo(percentButton.snp.right).offset(10)
            $0.height.width.equalTo(80)
        }
        
        resultLabel.snp.makeConstraints() {
            $0.bottom.equalTo(clearByOneButton.snp.top).inset(-10)
            $0.right.left.equalToSuperview().inset(25)
            $0.top.equalTo(workingLabel.snp.bottom).inset(50)
        }
        
        workingLabel.snp.makeConstraints() {
            $0.bottom.equalTo(resultLabel.snp.top).inset(20)
            $0.right.left.equalToSuperview().inset(25)
            $0.top.equalToSuperview().inset(70)
        }
    }
}
