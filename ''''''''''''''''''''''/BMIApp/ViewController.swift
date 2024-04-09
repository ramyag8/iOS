//
//  ViewController.swift
//  BMIApp
//
//  Created by ramya gopalam on 3/26/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightOL: UITextField!
    @IBOutlet weak var heightOL: UITextField!
    
    
    var image = ""
    var result = ""
    var height=0.0
    var weight=0.0
    var bmi = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calcBMI(_ sender: Any) {
        
        //read the height and weight and convert to double.
        height = Double(heightOL.text!)!
        weight = Double(weightOL.text!)!
        if bmi < 18.5{
            result = "underweight"
            image = "underweight"
        }
        else if bmi < 25.0{
            result = "normal"
            image = "normal"
        }
        else if bmi < 30.0{
            result = "overweight"
            image = "overweight"
        }
        else{
            result = "obese"
            image = "obesity"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue,sender: Any? ){
        let transition = segue.identifier
        if(segue.identifier == "bmisegue"){
            let destination = segue.destination as! ResultViewController
            
            destination.image = image
            destination.height = height
            destination.result = result
            destination.weight = weight
            destination.bmi = bmi
            
        }
    }
    
}
