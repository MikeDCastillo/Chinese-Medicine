//
//  TableViewController.swift
//  Chinese Medicine
//
//  Created by Michael Castillo on 6/10/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    // MARK: - Table view data source

    enum TableViewDataSourceRow: Int, CaseCountable {
        case bodyChart
        case formulas
        
        var title: String {
            switch self {
            case .bodyChart:
                return "Body Chart"
            case .formulas:
                return "Formulas"
            }
        }
        
    }

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
            //FIXME: - read comment
        case .formulas:
            break
            //segue to formulas. remove break
            //FIXME: - read comment above
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
