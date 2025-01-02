//
//  ViewController.swift
//  TableViewCustomCells
//
//  Created by Nashid  on 1/1/25.
//

import UIKit

//declares view controller and conforms to the tableViewDelegate and tableViewDataSource protocols which are necessary methods to populate a table
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet var tableView: UITableView!
    //an array of strings that will serve as the data source for the table view
    let myData = ["first", "second","Third","fourth"]

    override func viewDidLoad() {
        //called when the view controllers view has been loaded into memory
        super.viewDidLoad()
        
        //creates a UINib object that contains the layout of the custom cell
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        
        //registers the custom cell for reuse in the tableview which allows the tbaleview to use the custom cell when creating rows
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        
        //sets the view controller as the delegate of the table view which is necessary for handling interactions like selecting rows
        tableView.delegate = self
        
        //sets the view controller as the data source of the table view so it knows how to populate and manage the rows in the table
        tableView.dataSource = self
    }
    //TableView Funcs
    
    //method is apart of UITableViewDataSource which tells the table view how many rows it should display in the section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //returns how many items are in the array
        return myData.count
    }
    
    //also apart of the UITableViewDataSource--provides the cell for each row in the table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //reuses a cell if possible and casts it to the custom one, if a reusable cell isnt available it creates a new one
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        
        cell.myLabel.text = myData[indexPath.row]
        cell.myImageView.backgroundColor = .red
        
        return cell
    }
}

