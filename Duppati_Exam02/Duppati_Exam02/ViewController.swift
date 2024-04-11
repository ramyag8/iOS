//
//  ViewController.swift
//  Duppati_Exam02
//
//  Created by Duppati,Sudheer on 4/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var EnterText: UITextField!
    
    
    @IBOutlet weak var DisplayImage: UIImageView!
    
    
   var word = ""
    var c = " "
    
    var nation = [["Australia", "emu"], ["United States", "Bald_eagle"], ["Canada", "jay" ], ["New Zealand",  "kiwi"], ["South Korea", "magpie"]]
    
   // let images = [, , ,, ]
    
    
    @IBAction func EnterTextField(_ sender: UITextField) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func DisplayBirdBtn(_ sender: UIButton) {
//        if let enter = EnterText.text?.lowercased(){
//
//            var enter = EnterText.text!
//
//            var c = c + enter
//
//            for l in word{
//                if c.contains(l){
//                    DisplayImage.image = UIImage(named: nation[0][1])
//                }
//
//            }
//        }

        DisplayImage.image = UIImage(named: nation[0][1])
        }
    
    
    
    @IBAction func AnimateBtn(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        
        if transition == "animateSegue"{
            var destination = segue.destination as! AnimateViewController
            
            destination.Imagelabel = DisplayImage
            
            
        }
    }

}

