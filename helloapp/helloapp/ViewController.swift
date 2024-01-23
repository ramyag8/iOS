//
//  ViewController.swift
//  helloapp
//
//  Created by Gopalam,Ramya on 1/23/24.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var labelOl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func btnclicked(_ sender: Any) {
        var ip = inputOL.text!
        
        labelOl.text = "hello, \(ip)"
    }
    //read the entered name
    //string interpolate the name with"hello,"
    //assign it to the display or output label

    
}
