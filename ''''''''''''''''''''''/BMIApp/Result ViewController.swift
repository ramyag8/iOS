//
//  Result ViewController.swift
//  BMIApp
//
//  Created by ramya gopalam on 3/26/24.
//

import UIKit

class ResultViewController: UIViewController {
    var height = 0.0
    var weight = 0.0
    var image = " "
    var result = " "
    var bmi = 0.0
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var heightOL: UILabel!
    
    @IBOutlet weak var weightOL: UILabel!
    
    @IBOutlet weak var resultOL: UILabel!
    
    @IBOutlet weak var bmiOL: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageOL.image = UIImage(named: image)
        heightOL.text = "height: \(height)inches"
        weightOL.text = "weight: \(weight)lbs"
        bmiOL.text = "BMI: \(bmi)"
        resultOL.text = "result: \(result)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
