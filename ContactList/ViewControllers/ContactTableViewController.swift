//
//  ContactTableViewController.swift
//  ContactList
//
//  Created by Anzhelika on 14.11.25.
//

import UIKit

final class ContactTableViewController: UITableViewController {

    // MARK: - Private properties
    var contactList: [Contact]!
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
        
        contactDetailsVC.contact = contactList[indexPath.row]
    }
}

// MARK: - TabelViewDelegate
extension ContactTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "contactCell",
            for: indexPath
        )
        
        // берем обьект по индексу ячейки
        let contact = contactList[indexPath.row]
        
        // конфигурируем ячейку
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
    
}
