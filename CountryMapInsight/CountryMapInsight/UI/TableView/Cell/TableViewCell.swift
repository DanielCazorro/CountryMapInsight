//
//  TableViewCell.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lbCountry: UILabel!  // Etiqueta para mostrar el nombre del país
    @IBOutlet weak var lbLikes: UILabel!  // Etiqueta para mostrar el número de likes
    @IBOutlet weak var btCapital: UIButton!  // Botón para la capital del país
    
    // Closure para manejar la selección de la celda
    var didSelectCell: (() -> Void)?
    
    @IBAction func tapBtCapital(_ sender: Any) {
        // Llamar al closure cuando se seleccione la celda
        didSelectCell?()
    }
}
