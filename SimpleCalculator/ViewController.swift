//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Burak Afyonlu on 9.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberText: UITextField!
    @IBOutlet weak var secondNumberText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let keyboard = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(keyboard)
        
    }
    @objc func hideKeyboard() {
        
        view.endEditing(true)
        
    }

    @IBAction func sumClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstNumberText.text!) {
            if let secondNumber = Int(secondNumberText.text!) {
                
                let result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstNumberText.text!) {
            if let secondNumber = Int(secondNumberText.text!) {
                
                let result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstNumberText.text!) {
            if let secondNumber = Int(secondNumberText.text!) {
                
                let result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func multipleClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstNumberText.text!) {
            if let secondNumber = Int(secondNumberText.text!) {
                
                let result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
}

