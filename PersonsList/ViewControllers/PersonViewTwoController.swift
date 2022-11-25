//
//  PersonViewTwoController.swift
//  PersonsList
//
//  Created by Анастасия Булдакова on 23.11.2022.
//

import UIKit

class PersonViewTwoController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "details", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            content.text = person.email
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }
        
        cell.contentConfiguration = content
                
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
    
    
    
    
    /*
    var personTwoView = Person.getList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 41
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "details", for: indexPath)
        let person = personTwoView[indexPath.section]
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = person.phone
            cell.imageView?.image = UIImage (systemName: "phone")
        default:
            cell.textLabel?.text = person.email
            cell.imageView?.image = UIImage (systemName: "tray")
        }
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personTwoView.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personTwoView[section].fullName
    }
}

*/
