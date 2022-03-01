//
//  DetailsView.swift
//  ContactListSwiftUI
//
//  Created by Anastasia Izmaylova on 01.03.2022.
//

import SwiftUI

struct DetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 120, height: 120, alignment: .center)
                .padding()
            Label(person.phoneNumber, systemImage: Contacts.phone.rawValue)
            Label(person.email, systemImage: Contacts.email.rawValue)
        }
        .navigationTitle(person.fullName)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person.getContactList().first!)
    }
}
