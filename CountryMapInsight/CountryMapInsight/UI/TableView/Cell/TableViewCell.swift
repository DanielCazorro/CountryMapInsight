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
    // Nuevo closure para manejar la selección del botón de la capital
    var didSelectCapitalButton: (() -> Void)?
    
    func configure(with country: CountryModel) {
        // Configurar la celda con los datos del país
        lbCountry.text = country.name
        lbLikes.text = "Likes: \(country.likes)" // Corregir el texto del label de los likes

        // Configurar el botón para que navegue a la capital
        btCapital.addTarget(self, action: #selector(didTapCapitalButton), for: .touchUpInside)
    }
    
    @objc func didTapCapitalButton() {
        didSelectCapitalButton?()  // Llamar al closure cuando se seleccione el botón de la capital
    }
}
