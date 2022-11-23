//
//  ViewController.swift
//  PersonsList
//
//  Created by Анастасия Булдакова on 22.11.2022.
//

import UIKit

class PersonViewController: UITableViewController  {
    
    var contactList = Person.getList()
    
    
    
    // MARK: - Table view data source
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 41
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "list", for: indexPath)
        let person = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        // content.secondaryText = person.surname
        cell.contentConfiguration = content
        cell.imageView?.image = UIImage(systemName: "phone")
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detailsVC = segue.destination as? DetailsInfoViewController else { return }
        detailsVC.person = contactList[indexPath.row]
    }
}
