//
//  ViewController.swift
//  VowelTester
//
//  Created by Gopalam,Ramya on 1/25/24.
//

import UIKit

class ViewController: 
    UIViewController {
    
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func checkbtnclicked(_ sender: Any) {
        //Read the entered text and assign it to a var
        var input = inputOL.text!
        //check for vowels using if statement
        if(input.contains("a") ||
           input.contains("e") ||
           input.contains("i") ||
           input.contains("o") ||
           input.contains("u")){
            //print the message
            print("\(input) contains vowels😄")
            outputOL.text = "\(input) contains vowels😄"
        }
        else{
            //print the message
            print("\(input) does not contain vowels 😋")
            outputOL.text = "\(input) does not contain vowels😋"
        }
    }
}

