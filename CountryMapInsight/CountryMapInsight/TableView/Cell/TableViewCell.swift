//
//  TableViewCell.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var lbCountry: UILabel!
    @IBOutlet weak var btCapital: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    // MARK: - IBAction
    @IBAction func tapBtCapital(_ sender: Any) {
    }
    
}
