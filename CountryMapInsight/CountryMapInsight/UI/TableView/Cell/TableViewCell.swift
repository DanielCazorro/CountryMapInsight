//
//  TableViewCell.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var lbCountry: UILabel!  // Etiqueta para mostrar el nombre del país
    @IBOutlet weak var lbLikes: UILabel!  // Etiqueta para mostrar el número de likes
    @IBOutlet weak var btCapital: UIButton!  // Botón para la capital del país
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateCell(country: CountryModel?) {
        // Configurar la celda con los datos del país
        lbCountry.text = country?.name ?? ""
        lbLikes.textColor = .magenta
        lbLikes.text = String("Likes: \(country?.likes ?? 0)")
        
        // Configurar el botón para que navegue a la capital
        btCapital.setTitle(country?.capital ?? "", for: .normal) // Configurar el título del botón con el nombre de la capital
        
        btCapital.sizeToFit()
        btCapital.titleLabel?.adjustsFontSizeToFitWidth = true
        btCapital.titleLabel?.minimumScaleFactor = 0.5
        
        // Asegurarse de que la celda se actualice correctamente
        setNeedsLayout()
        layoutIfNeeded()
    }
    
}
