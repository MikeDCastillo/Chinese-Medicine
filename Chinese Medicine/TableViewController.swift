//
//  TableViewController.swift
//  Chinese Medicine
//
//  Created by Michael Castillo on 6/10/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    enum TableViewDataSourceRow: Int, CaseCountable {
        case bodyChart
        case formulas
        case bodyPatterns
        
        var title: String {
            switch self {
            case .bodyChart:
                return "Body Chart"
            case .formulas:
                return "Formulas"
            case .bodyPatterns:
                return "Body Patterns"
            }
        }
    }
    
    // Life-Cycle Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TableViewDataSourceRow.caseCount
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewRow = TableViewDataSourceRow(rawValue: indexPath.row)!
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        cell.textLabel?.text = tableViewRow.title

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tableViewRow = TableViewDataSourceRow(rawValue: indexPath.row)!
        switch tableViewRow {
        case .bodyChart:
            break
            //segue to bodyChart. remove break
            //FIXME: - read comment above
        case .formulas:
            break
            //segue to formulas. remove break
            //FIXME: - read comment above
        case .bodyPatterns:
            break
            //segue to body organ patterns
            //FIXME: - read above
        }
    }


}
