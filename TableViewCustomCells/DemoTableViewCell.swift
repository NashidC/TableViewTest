//
//  DemoTableViewCell.swift
//  TableViewCustomCells
//
//  Created by Nashid  on 1/1/25.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    
    //called when the cell is loaded and is where to perform any additional setup or initialization for the cells elements
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //called whena  user taps a row it allows to chnge the cells appearance when selected or deselected
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
