//
//  DetailsInfoViewController.swift
//  PersonsList
//
//  Created by Анастасия Булдакова on 23.11.2022.
//

import UIKit

class DetailsInfoViewController: UIViewController {

    
    @IBOutlet var phoneNumberLabel: UILabel!
    
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneNumberLabel.text = "Phone: \(person.phone)"
    }

}
