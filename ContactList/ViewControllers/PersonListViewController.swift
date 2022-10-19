//
//  ContactSectionViewController.swift
//  ContactList
//
//  Created by Айтолкун Анарбекова on 18/10/22.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    var contactList = Person.getContactList()

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = contactList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone")
            content.text = person.phone
        } else {
            content.image = UIImage(systemName: "tray")
            content.text = person.email
        }
        
        cell.contentConfiguration = content

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = contactList[section]
        return person.nameSurname
        
    }

}
