//
//  PersonTableViewController.swift
//  HW7
//
//  Created by Dmitry Tokarev on 03.11.2020.
//

import UIKit

class PersonTableViewController: UITableViewController {
 
//    let somePerson = Person.getPersonList()
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personData.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = personData[indexPath.row]
        cell.textLabel?.text = person.fullName
        cell.textLabel?.numberOfLines = 1
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personVC = segue.destination as? PersonDetailViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personVC?.person = personData[indexPath.row]
    }
    
}
