//
//  ViewController.swift
//  Calculator
//
//  Created by 陈俊杰 on 15/9/2.
//  Copyright © 2015年 RAMEET.Chan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!

    var IsUserTypingInMiddleOfNumber = false
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if IsUserTypingInMiddleOfNumber {
          display.text! = display.text! + digit
        }
        else{
            display.text = digit
            IsUserTypingInMiddleOfNumber = true
        }
        
    }
}

