//
//  DescriptionViewController.swift
//  TableViewDemo
//
//  Created by ramya gopalam on 3/28/24.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    var product:Product?

    @IBOutlet weak var displayLabelOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        displayLabelOL.text = "The Product name is\((product?.ProductName)!) is of type \((product?.ProductCategory)!)"
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
