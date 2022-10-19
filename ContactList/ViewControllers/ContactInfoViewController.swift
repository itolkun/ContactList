//
//  ViewController.swift
//  ContactList
//
//  Created by Айтолкун Анарбекова on 18/10/22.
//

import UIKit

class ContactInfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.name
        phoneLabel.text = person.phone
        emailLabel.text = person.email
       
    }


}

