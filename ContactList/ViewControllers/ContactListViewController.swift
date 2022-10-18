//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Айтолкун Анарбекова on 18/10/22.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private var contactList = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.nameSurname
        cell.contentConfiguration = content
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = contactList[indexPath.row]
        performSegue(withIdentifier: "contactInfo", sender: person)
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactInfoVC = segue.destination as? ContactInfoViewController
        contactInfoVC?.contactInfo = sender as? Person
    }
}
