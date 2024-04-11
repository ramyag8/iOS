//
//  ViewController.swift
//  Kunkala_PracticeExam02
//
//  Created by Kunkala,Nagarjuna Reddy on 4/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loanTypeOL: UITextField!
    @IBOutlet weak var loanAmountOL: UITextField!
    @IBOutlet weak var interestRateOL: UITextField!
    @IBOutlet weak var termOL: UITextField!
    
    @IBOutlet weak var btnCalculateEMI: UIButton!
    @IBOutlet weak var btnReset: UIButton!
    
    var loanType = ""
    var loanAmount = 0
    var interestRate = 0.0
    var term = 0
    var image = ""
    var emi = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loanTypeOL.text = ""
        loanAmountOL.text = ""
        interestRateOL.text = ""
        termOL.text = ""
        
        btnCalculateEMI.isEnabled = false
        btnReset.isEnabled = false
    }
    
    @IBAction func termChanged(_ sender: Any) {
        btnCalculateEMI.isEnabled = true
        btnReset.isEnabled = true 
    }
    

    @IBAction func btnResetClicked(_ sender: Any) {
        viewDidLoad()
    }
    
    @IBAction func btnCalculateEMIClicked(_ sender: Any) {
        loanType = loanTypeOL.text!
        loanAmount = Int(loanAmountOL.text!)!
        interestRate = Double(interestRateOL.text!)!
        term = Int(termOL.text!)!
        
        var totalMonths = 12*term
        var monthlyInterestRate = (interestRate/12)
        emi = Double(loanAmount) * (monthlyInterestRate * pow(1+monthlyInterestRate, Double(totalMonths)))/pow(1+monthlyInterestRate, Double(totalMonths) - 1 )
        if loanType.lowercased() == "car" {
            image = "Car.jpg"
        } else if loanType.lowercased() == "personal" {
            image = "Personal.jpg"
        } else if loanType.lowercased() == "home" {
            image = "Home.jpg"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "seg_CalculateEMI"{
            let destination = segue.destination as! ResultViewController
            destination.image = image
            destination.emi = emi
            destination.loanAmount = loanAmount
            destination.loanType = loanType
            destination.rate = interestRate
        }
    }
}

