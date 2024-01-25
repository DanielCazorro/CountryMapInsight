//
//  DetailViewController.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    
    var selectedCountry: String?
    var customInformation: String?
    
    //MARK: - IBOutlet
    @IBOutlet weak var mvMap: MKMapView!
    @IBOutlet weak var lbName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configurar el texto de la etiqueta lbName
        if let country = selectedCountry {
            lbName.text = country
            
            // Actualizar la interfaz de usuario
            view.setNeedsLayout()
            view.layoutIfNeeded()
        }
        
    }
}
