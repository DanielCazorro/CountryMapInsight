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
    
    // Método para configurar la celda con los datos del país
    func configure(with country: CountryModel) {
        // Configurar la celda con los datos del país
        
        // Acción para la selección de la celda
        didSelectCell = { [weak self] in
            guard let self = self else { return }
            self.didSelectCell?() 
        }
    }
}
