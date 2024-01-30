//
//  DetailViewController.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    @IBOutlet weak var mvMap: MKMapView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var btLikes: UIButton!
    
    var country: CountryModel?  // Propiedad country para almacenar el objeto CountryModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configurar la vista con los datos del país
        configureView()
    }
    
    func configureView() {
        if let country = country {
            // Mostrar el nombre del país
            lbName.text = country.name
            
            // Configurar el mapa con las coordenadas del país
            let countryCoordinates = country.countryCoordinates
            let countryAnnotation = MKPointAnnotation()
            countryAnnotation.coordinate = countryCoordinates
            countryAnnotation.title = country.name
            mvMap.addAnnotation(countryAnnotation)
            mvMap.setCenter(countryCoordinates, animated: true)
        }
    }


    @IBAction func btLikesTap(_ sender: Any) {
    }
}
