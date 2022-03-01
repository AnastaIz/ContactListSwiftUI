//
//  Numbers.swift
//  ContactListSwiftUI
//
//  Created by Anastasia Izmaylova on 01.03.2022.
//

import SwiftUI

struct Numbers: View {
    let persons: [Person]
    
    var body: some View {
        List(persons, id: \.self) { person in
            Section(person.fullName) {
                Label(person.phoneNumber, systemImage: Contacts.phone.rawValue)
                Label(person.email, systemImage: Contacts.email.rawValue)
            }
            .font(.headline)
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(persons: Person.getContactList())
    }
}
