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
    
    static func getContact() -> [Contact] {
        var contactList: [Contact] = []
        
        let store = DataStore.shared
        // определяем количество обьектов
        
        let name = store.names.shuffled()
        let surname = store.surnames.shuffled()
        let email = store.emails.shuffled()
        let phone = store.phones.shuffled()
        
        let count = min(name.count, surname.count, email.count, phone.count)
        
        for index in 0..<count {
            // создаем обьект контакта
            let person = Contact(
                name: name[index],
                surname:surname[index],
                email: email[index],
                phone: phone[index])
            
            // добавляем обьект в неупорядоченую коллекцию
            contactList.append(person)
        }
        
        return contactList
    }
}
