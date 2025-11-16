//
//  SectionContactsTableViewController.swift
//  ContactList
//
//  Created by Anzhelika on 16.11.25.
//

import UIKit

final class SectionContactsTableViewController: UITableViewController {

    // MARK: - Private properties
    private let contactListSet = Contact.getContact()
    private var contactList: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactList = contactListSet.shuffled()
    }
}

// MARK: - TableViewDelegate
extension SectionContactsTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        let count = contactList.count
        return count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = contactList[section]
        return contact.fullName
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let contact = contactList[indexPath.row]

        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.text = contact.phone
            content.image = UIImage(systemName: "phone")
            cell.contentConfiguration = content
            return cell;
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "envelope")
            content.text = contact.email
            cell.contentConfiguration = content
            return cell;
        default:
            fatalError("Unknown row in section")
        }
    }
}
