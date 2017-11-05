//
//  ViewController.swift
//  calculator
//
//  Created by Mikhail Ameerally on 2017-09-24.
//  Copyright © 2017 Mikhail Ameerally. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var has_decimal = false
    var has_operation = false
    var has_first_number = false
    var first_number = 0.0
    var second_number = 0.0
    var operation = ""
    var final = 0.0
    
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if (has_operation && has_first_number)
        {
            display.text = "0"
            has_operation = false // so it doean't reset display on every button press
        }
        
        if( display.text == "0" && sender.tag != 11)
        {
            display.text = String(sender.tag-1)
        }
        else if(sender.tag-1 < 10)
        {
            display.text = display.text! + String(sender.tag-1)
        }
        else if(!has_decimal && sender.tag == 11)
        {
            display.text = display.text! + "."
            has_decimal = true
        }
        
        
        
        
        
        
    }
    
    
    
    @IBAction func operator_button(_ sender: UIButton)
    {
        
        if(sender.tag == 13)
        {
            operation = "+"
        }
        else if(sender.tag == 14)
        {
            operation = "-"
        }
        else if(sender.tag == 15)
        {
            operation = "*"
        }
        else if(sender.tag == 16)
        {
            operation = "/"
        }
        has_operation = true
        has_first_number = true
        first_number = Double(display.text!)!
    }
    
    func evaluate(first_num: String, second_num: String, op: String) -> Double
    {
        let string_expression = first_num + op + second_num
        let expression = NSExpression(format: string_expression)
        return (expression.expressionValue(with: nil, context: nil) as? Double)!
        
    }
    
    @IBAction func equal_function(_ sender: UIButton)
    {
        second_number = Double(display.text!)!
        if (operation != "")
        {
        final = evaluate(first_num: String(first_number), second_num: String(second_number), op: operation)
        
        display.text = String(final)
        }
    }
    
    
    
    
    @IBAction func all_clear(_ sender: UIButton)
    {
        display.text = "0"
        has_decimal = false
        has_operation = false
        operation = ""
        has_first_number = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

