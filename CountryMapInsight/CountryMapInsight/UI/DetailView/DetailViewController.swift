//
//  DetailViewController.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    var didUpdateLikes: ((Int) -> Void)?

    @IBOutlet weak var mvMap: MKMapView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var btLikes: UIButton!
    
    var country: CountryModel?  // Propiedad country para almacenar el objeto CountryModel
    var isCapitalDetail: Bool = false // Indicador de si se muestra el detalle de la capital

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configurar la vista con los datos del país
        configureView()
    }
    
    func configureView() {
        if let country = country {
            
            if !isCapitalDetail {
                // Mostrar el nombre del país
                lbName.text = country.name
                
                // Configurar el mapa con las coordenadas del país
                let countryCoordinates = country.countryCoordinates
                let countryAnnotation = MKPointAnnotation()
                countryAnnotation.coordinate = countryCoordinates
                countryAnnotation.title = country.name
                mvMap.addAnnotation(countryAnnotation)
                mvMap.setCenter(countryCoordinates, animated: true)
            } else {
                
                // Mostrar el nombre de la capital
                lbName.text = country.capital
                
                // Configurar el mapa con las coordenadas del país
                let capitalCoordinates = country.capitalCoordinates
                let countryAnnotation = MKPointAnnotation()
                countryAnnotation.coordinate = capitalCoordinates
                countryAnnotation.title = country.capital
                mvMap.addAnnotation(countryAnnotation)
                mvMap.setCenter(capitalCoordinates, animated: true)
            }
                        

        }
    }


    @IBAction func btLikesTap(_ sender: Any) {
        guard var country = country else { return }
        
        // Incrementar el contador de likes
        country.likes += 1
        
        // Actualizar la etiqueta con el nuevo número de likes
        //lbLikes.text = "Likes: \(country.likes)"
        
        // Llamar al closure para informar la actualización de likes
        didUpdateLikes?(country.likes)
    }
}
