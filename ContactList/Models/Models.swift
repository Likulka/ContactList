//
//  File.swift
//  ContactList
//
//  Created by Anzhelika on 16.11.25.
//

import Foundation

struct Contact: Hashable {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContact() -> Set<Contact> {
        var contactList: Set<Contact> = []
        
        // определяем количество обьектов
        let count = DataSource.names.count
        
        // перебираем массивы
        for index in 0..<count {
            let name = DataSource.names[index]
            let surname = DataSource.surnames[index]
            let email = DataSource.emails[index]
            let phone = DataSource.phones[index]
            
            // создаем обьект контакта
            let contact = Contact(name: name, surname: surname, email: email, phone: phone)
            
            // добавляем обьект в неупорядоченую коллекцию
            contactList.insert(contact)
        }
        
        return contactList
    }
}
