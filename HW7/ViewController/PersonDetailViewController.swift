//
//  PersonDetailViewController.swift
//  HW7
//
//  Created by Dmitry Tokarev on 04.11.2020.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    @IBOutlet var fullName: UINavigationItem!
    @IBOutlet var email: UILabel!
    @IBOutlet var phoneNumber: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullName.title = person.fullName
        email.text = person.email
        phoneNumber.text = person.phoneNumber
    }
}
