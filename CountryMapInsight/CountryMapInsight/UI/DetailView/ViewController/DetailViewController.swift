//
//  DetailViewController.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    var detailViewModel: DetailViewModel?
    var didSelectCountryClosure: ((String) -> Void)?

    //MARK: - IBOutlet
    @IBOutlet weak var mvMap: MKMapView!
    @IBOutlet weak var lbName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Configurar la vista con los datos proporcionados por el DetailViewModel
        lbName.text = detailViewModel?.countryName

        // Configurar el mapa con las coordenadas proporcionadas por el DetailViewModel
        if let coordinate = detailViewModel?.countryCoordinate {
            let annotation = MKPointAnnotation()
            annotation.coordinate = coordinate
            mvMap.addAnnotation(annotation)
            mvMap.setCenter(coordinate, animated: true)
        }

        // Llamar al closure didSelectCountryClosure con el país seleccionado
        if let countryName = detailViewModel?.countryName, let didSelectCountryClosure = didSelectCountryClosure {
            didSelectCountryClosure(countryName)
        }
    }

    @IBAction func showCapitalName(_ sender: UIButton) {
        // Cuando se pulsa el botón, mostrar el nombre de la capital y actualizar el mapa con las coordenadas de la capital
        lbName.text = detailViewModel?.cityName

        if let capitalCoordinate = detailViewModel?.capitalCoordinate {
            let annotation = MKPointAnnotation()
            annotation.coordinate = capitalCoordinate
            mvMap.removeAnnotations(mvMap.annotations)
            mvMap.addAnnotation(annotation)
            mvMap.setCenter(capitalCoordinate, animated: true)
        }
    }
}
