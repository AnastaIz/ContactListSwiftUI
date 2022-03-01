//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by Anastasia Izmaylova on 01.03.2022.
//

import SwiftUI

struct ContactList: View {
    
    let persons: [Person]
    
    var body: some View {
        
        List(persons, id: \.self) { person in
            NavigationLink(destination: DetailsView(person: person)) {
                Text("\(person.fullName)")
            }
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: Person.getContactList())
    }
}
