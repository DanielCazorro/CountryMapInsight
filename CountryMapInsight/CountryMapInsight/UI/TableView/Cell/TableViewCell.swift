//
//  TableViewCell.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    var tapBtCapitalAction: (() -> Void)?

    // MARK: - IBOutlet
    @IBOutlet weak var lbCountry: UILabel!
    @IBOutlet weak var lbLikes: UILabel!
    @IBOutlet weak var btCapital: UIButton!

    // MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Configuración inicial de la celda al cargar desde el archivo XIB
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configuración adicional cuando la celda es seleccionada
    }

    // MARK: - IBAction
    @IBAction func tapBtCapital(_ sender: Any) {
        tapBtCapitalAction?()
    }
}
