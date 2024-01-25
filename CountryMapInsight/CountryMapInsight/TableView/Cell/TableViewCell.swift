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
    
    // MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    // MARK: - IBAction
    @IBAction func tapBtCapital(_ sender: Any) {
    }
    
}
