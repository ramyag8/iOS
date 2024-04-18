//
//  ViewController.swift
//  Kunkala_PracticeExam03
//
//  Created by Kunkala,Nagarjuna Reddy on 4/16/24.
//

import UIKit

class Contact{
    var firstName:String?
    var lastName:String?
    var phoneNumber:String?
    
    init(_ firstName: String? = nil, _ lastName: String? = nil, _ phoneNumber: String? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
    }
}

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewOL.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = "\(contacts[indexPath.row].firstName!) \(contacts[indexPath.row].lastName!)"
        return cell
    }
    

    @IBOutlet weak var TableViewOL: UITableView!
    
    var contacts = [Contact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewOL.delegate = self
        TableViewOL.dataSource = self
        
        contacts.append(Contact("John","Wick","+1 (234) 345-4567"))
        contacts.append(Contact("John","Corter","+1 (546) 345-5368"))
        contacts.append(Contact("Ajay","Bandi","+1 (345) 456-8734"))
        contacts.append(Contact("Satya Savithri","Tirumala","+1 (645) 677-8757"))
        contacts.append(Contact("Abdelaziz","Fellah","+1 (853) 345-8769"))
        contacts.append(Contact("Tomasz","Haupt","+1 (908) 546-3426"))
        contacts.append(Contact("Mahmoud","Yousef","+1 (456) 767-7465"))
        contacts.append(Contact("Ariel","Julio","+1 (376) 345-9687"))
        contacts.append(Contact("Sowmya","Yalamarthi","+1 (657) 764-4567"))
        contacts.append(Contact("Himanshi","Kharotia","+1 (245) 455-5368"))
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "ContactSegue" {
            let destination = segue.destination as! ProfileViewController
            let fn = contacts[(TableViewOL.indexPathForSelectedRow?.row)!].firstName!
            let ln = contacts[(TableViewOL.indexPathForSelectedRow?.row)!].lastName!
            destination.initials = "\(fn[fn.startIndex]). \(ln[ln.startIndex])."
            destination.phoneNumber = contacts[(TableViewOL.indexPathForSelectedRow?.row)!].phoneNumber!
        }
    }

}

