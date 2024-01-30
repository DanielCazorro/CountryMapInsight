//
//  TableViewCell.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lbCountry: UILabel!
    @IBOutlet weak var lbLikes: UILabel!
    @IBOutlet weak var btCapital: UIButton!
    
    var tapBtCapitalAction: (() -> Void)?
    
    @IBAction func tapBtCapital(_ sender: Any) {
        tapBtCapitalAction?()
    }
}
