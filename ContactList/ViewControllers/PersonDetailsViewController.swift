//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Сазонов Станислав on 18.04.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var mailAdressLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneNumberLabel.text = person.phoneNumber
        mailAdressLabel.text = person.email
    }
}
