//
//  ViewController.swift
//  TableViewCustomCells
//
//  Created by Nashid  on 1/1/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    let myData = ["first", "second","Third","fourth"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView,delegate = self
        tableView.dataSource = self
    }
    //TableView Funcs
    func numberOfSections(in tableView: UITableView) -> Int {
        return myData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}

