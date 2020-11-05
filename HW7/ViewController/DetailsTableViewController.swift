//
//  DetailsTableViewController.swift
//  HW7
//
//  Created by Dmitry Tokarev on 04.11.2020.
//

import UIKit

class DetailsTableViewController: UITableViewController {
    
//    var personFromArray: [Person] = []
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personData.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personData[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath)
        cell.textLabel?.text = personData[indexPath.section].detailArray[indexPath.row]

        return cell
    }
}
