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
        btCapital.setTitle(country?.capital ?? "", for: .normal) // Configurar el título del botón con el nombre de la capital
        
//        // Ajustar el número máximo de líneas del título del botón a 1 y truncar el texto si es necesario
//        DispatchQueue.main.async {
//            self.btCapital.titleLabel?.numberOfLines = 1
//            self.btCapital.titleLabel?.lineBreakMode = .byTruncatingTail
//        }
        
        // Actualizar el número de likes
        updateLikesLabel(likes: country?.likes ?? 0)
        
        // Asegurarse de que la celda se actualice correctamente
        setNeedsLayout()
        layoutIfNeeded()
    }
    
    private func updateLikesLabel(likes: Int) {
        // Actualizar el número de likes en la etiqueta
        lbLikes.text = "Likes: \(likes)"
    }}
