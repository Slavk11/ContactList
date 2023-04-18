//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Сазонов Станислав on 18.04.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var fullName: UILabel!
    @IBOutlet var phone: UILabel!
    @IBOutlet var mail: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullName.text = person.fullName
        phone.text = person.phoneNumber
        mail.text = person.email
    }
}
