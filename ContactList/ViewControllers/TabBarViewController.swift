//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Anzhelika on 17.11.25.
//

import UIKit

final class TabBarViewController: UITabBarController {

    let contactList = Contact.getContact()

    override func viewDidLoad() {
        guard let contactsVC = viewControllers?.last as? ContactTableViewController else {
            return
        }
        guard let sectionVC = viewControllers?.first as? SectionContactsTableViewController else {
            return
        }

        contactsVC.contactList = contactList
        sectionVC.contactList = contactList

        super.viewDidLoad()

    
    }

}
