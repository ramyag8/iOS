//
//  ProfileViewController.swift
//  Kunkala_PracticeExam03
//
//  Created by Kunkala,Nagarjuna Reddy on 4/16/24.
//

import UIKit

class ProfileViewController: UIViewController {
    var initials = ""
    var phoneNumber = ""
    
    @IBOutlet weak var initialsOL: UILabel!
    
    @IBOutlet weak var phoneNumberOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initialsOL.text = "Initials: \(initials)"
        phoneNumberOL.text = "Phone Number: \(phoneNumber)"
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
