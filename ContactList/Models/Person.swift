//
//  Person.swift
//  ContactList
//
//  Created by Айтолкун Анарбекова on 18/10/22.
//

import Foundation



struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String

    var nameSurname: String {
        "\(name) \(surname)"
    }
    
    private static var persons: [Person] = []

    static func getContactList() -> [Person] {
        if persons.isEmpty {
            let dataManager = DataManager()
            var names = dataManager.names.shuffled()
            var surnames = dataManager.surnames.shuffled()
            var phones = dataManager.phones.shuffled()
            var emails = dataManager.emails.shuffled()

            for _ in 1...10 {
                let person = Person(
                    name: names.removeLast(),
                    surname: surnames.removeLast(),
                    phone: phones.removeLast(),
                    email: emails.removeLast()
                )
                persons.append(person)

            }
        }
        
       
        return persons
    }
}

