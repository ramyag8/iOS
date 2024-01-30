//
//  ViewController.swift
//  wheather app
//
//  Created by Gopalam,Ramya on 1/30/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var inputOL: UITextField!
    
    
       
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnclicked(_ sender: Any) {
        var temperature = Int(inputOL.text!)
        if(temperature! > 60){
            outputOL.text="It is hot!"
            imageOL.image=UIImage(named:"hot.jpeg")
        }
        else{
            outputOL.text="it is cold!"
            imageOL.image=UIImage(named:"cold.webp")
        }
        
    }
    
}
