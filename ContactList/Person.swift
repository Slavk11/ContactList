//
//  Contact.swift
//  ContactList
//
//  Created by Сазонов Станислав on 18.04.2023.
//

struct Person {
    
    let name : String?
    let surname: String?
    let email: String?
    let phoneNumber: String?
    
    var fullName: String {
        "\(String(describing: name)) \(String(describing: surname))"
    }
    
    static func getPersonInfo() -> [Person] {
        let dataStore = DataStore()
        return [
            Person(
                name: dataStore.names.randomElement(),
                surname: dataStore.surnames.randomElement(),
                email: dataStore.emails.randomElement(),
                phoneNumber: dataStore.phoneNumbers.randomElement()
            )
        ]
    }
}

