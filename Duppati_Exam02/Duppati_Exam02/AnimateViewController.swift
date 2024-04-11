//
//  AnimateViewController.swift
//  Duppati_Exam02
//
//  Created by Duppati,Sudheer on 4/11/23.
//

import UIKit

class AnimateViewController: UIViewController {
    
    
    @IBOutlet weak var Imagelabel: UIImageView!
    
    var ima = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Imagelabel.image = UIImage(named: ima)
        
    }
    
    
    @IBAction func RightCornerBtn(_ sender: UIButton) {
        
        Imagelabel.frame.origin.x = 314
        Imagelabel.frame.origin.y = 0
    }
    
    
    @IBAction func LeftCornerBtn(_ sender: UIButton) {
        Imagelabel.frame.origin.x = 0
        Imagelabel.frame.origin.y = 0
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
