//
//  ViewController.swift
//  Todoey
//
//  Created by Fabrice MARIE-SAINTE on 29/06/2019.
//  Copyright © 2019 Fabrice MARIE-SAINTE. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["item0","item1","item2"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    //MARK - Tableview datasource methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    // MARK - TableView Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(itemArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
        
        //Add a checkmark when a cell is selected
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark            
        }
        
    }


}

