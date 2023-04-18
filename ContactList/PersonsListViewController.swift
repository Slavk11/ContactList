//
//  ViewController.swift
//  ContactList
//
//  Created by Сазонов Станислав on 18.04.2023.
//

import UIKit

final class PersonsListViewController: UITableViewController {
    
    let personList = Person.getPersonInfo()

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personList[indexPath.row]
        let personDetailsVC = segue.destination as? PersonDetailsViewController
        personDetailsVC?.person = person
    }
}

// MARK: - UITableViewDataSource
extension PersonsListViewController {
    /*override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
     */
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
