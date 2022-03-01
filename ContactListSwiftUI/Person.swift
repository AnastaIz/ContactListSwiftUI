//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Anastasia Izmaylova on 01.03.2022.
//

import SwiftUI

class Person: NSObject {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    init(name: String, surname: String, email: String, phoneNumber: String) {
        self.name = name
        self.surname = surname
        self.email = email
        self.phoneNumber = phoneNumber
    }

    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
