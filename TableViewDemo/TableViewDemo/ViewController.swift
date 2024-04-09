//
//  ViewController.swift
//  TableViewDemo
//
//  Created by ramya gopalam on 3/28/24.
//

import UIKit
class Product{
    var ProductName:String?
    var ProductCategory:String?
    init(ProductName: String? = nil, ProductCategory: String? = nil) {
        self.ProductName = ProductName
        self.ProductCategory = ProductCategory
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return number of products
        return Products.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        var cell = tableViewOL.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        //populate a cell
        cell.textLabel?.text = Products[indexPath.row].ProductName
        //return a cell
        return cell
        
        
    }
    
    
    @IBOutlet weak var tableViewOL: UITableView!
    var Products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOL.delegate = self
        tableViewOL.dataSource = self
        
        let p1=Product(ProductName:"iphone",ProductCategory:"Mobile phone")
        Products.append(p1)
        let p2=Product(ProductName:"Macbook",ProductCategory: "Laptops")
        Products.append(p2)
        let p3=Product(ProductName:"VisionPro",ProductCategory: "Augumented Reality")
        Products.append(p3)
        let p4=Product(ProductName:"ipad",ProductCategory:"tablets")
        Products.append(p4)
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue,sender: Any?){
        let transition = segue.identifier
        if (segue.identifier == "ProdDescriptionSegue"){
            let destination = segue.destination as!
            DescriptionViewController
            destination.product = Products[(tableViewOL.indexPathForSelectedRow?.row)!]
        }
    }


}

