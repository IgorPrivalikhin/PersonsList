//
//  DetailsInfoViewController.swift
//  PersonsList
//
//  Created by Анастасия Булдакова on 23.11.2022.
//

import UIKit

class DetailsInfoViewController: UIViewController {

    
    @IBOutlet var phonePerson: UILabel!
    
    @IBOutlet var emailPerson: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phonePerson.text = person.phone
        emailPerson.text = person.email
        self.title = person.fullName
    }
    

}
