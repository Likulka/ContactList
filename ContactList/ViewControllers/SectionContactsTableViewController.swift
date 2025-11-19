//
//  SectionContactsTableViewController.swift
//  ContactList
//
//  Created by Anzhelika on 16.11.25.
//

import UIKit

final class SectionContactsTableViewController: UITableViewController {

    // MARK: - Private properties
    var contactList: [Contact]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - TableViewDelegate
extension SectionContactsTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullName
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0:
            content.text = contact.phone
            content.image = UIImage(systemName: "phone")
            cell.contentConfiguration = content
        default:
            content.image = UIImage(systemName: "tray")
            content.text = contact.email
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
