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
    
    var contactInfo: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = contactInfo.name
        phoneLabel.text = contactInfo.phone
        emailLabel.text = contactInfo.email
       
    }


}

