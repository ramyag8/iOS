//
//  ResultViewController.swift
//  Kunkala_PracticeExam02
//
//  Created by Kunkala,Nagarjuna Reddy on 4/9/24.
//

import UIKit

class ResultViewController: UIViewController {
    var loanType = ""
    var loanAmount = 0
    var rate = 0.0
    var emi = 0.0
    var image = ""

    @IBOutlet weak var resLoanTypeOL: UILabel!
    @IBOutlet weak var resLoanAmountOL: UILabel!
    @IBOutlet weak var resInterestRateOL: UILabel!
    @IBOutlet weak var resEmiOL: UILabel!
    @IBOutlet weak var resImageOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if loanType == "" && loanAmount == 0 && rate == 0.0 && emi == 0.0 && image == "" {
            resLoanTypeOL.text = "Loan Type: "
            resLoanAmountOL.text = "Entered Loan Amount: "
            resInterestRateOL.text = "Entered Interest Rate: "
            resEmiOL.text = "Calculated Monthly EMI: "
            resImageOL.image = UIImage()
        } else {
            resLoanTypeOL.text = "Loan Type: \(loanType)"
            resLoanAmountOL.text = "Entered Loan Amount: $\(loanAmount)"
            resInterestRateOL.text = "Entered Interest Rate: \(rate)%"
            resEmiOL.text = "Calculated Monthly EMI: $\(String(format: "%.2f", emi))"
            resImageOL.image = UIImage(named: image)
        }
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
