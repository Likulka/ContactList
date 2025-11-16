//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Anzhelika on 16.11.25.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    // MARK: - Public properties
    var contact: Contact!
    
    // MARK: - Outlets
    @IBOutlet var phone: UILabel!
    @IBOutlet var email: UILabel!
    
    // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = contact.fullName
        phone.text = contact.phone
        email.text = contact.email
    }

}
