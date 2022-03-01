//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Anastasia Izmaylova on 01.03.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        NavigationView{
            TabView {
                ContactList(persons: persons)
                    .tabItem {
                        Label("Contacts", systemImage: "person.3.fill")
                    }
                Numbers(persons: persons)
                    .tabItem {
                        Label("Numbers", systemImage: "phone.fill")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
