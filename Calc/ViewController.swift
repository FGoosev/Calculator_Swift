//
//  ViewController.swift
//  Calc
//
//  Created by Александр Гусев on 10.02.2022.
//

import UIKit

class ViewController: UIViewController {

    var number:Double = 0
    var firstNum:Double = 0
    var operation:Int = 0
    var mathSign:Bool = false
    @IBOutlet weak var result: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true{
            result.text = String(sender.tag)
            mathSign = false
        }
        else{
            result.text = result.text! + String(sender.tag)
        }
        
        number = Double(result.text!)!
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 15{
            firstNum = Double(result.text!)!
            if sender.tag == 11{//Delenie
                result.text = "/"
            }
            else if sender.tag == 12{//umnoj
                result.text = "*"
            }
            else if sender.tag == 13{//minus
                result.text = "-"
            }
            else if sender.tag == 14{//plus
                result.text = "+"
            }
            else if sender.tag == 10{
                result.text = ""
                number = 0
                firstNum = 0
                operation = 0
            }
            
            operation = sender.tag
            mathSign = true
        }
        else if sender.tag == 15{
            if operation == 11{
                result.text = String(firstNum / number)
            }
            else if operation == 12{
                result.text = String(firstNum * number)
            }
            else if operation == 13{
                result.text = String(firstNum - number)
            }
            else if operation == 14{
                result.text = String(firstNum + number)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

