//
//  DetailViewController.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet weak var mvMap: MKMapView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var btLikes: UIButton!

    var viewModel: DetailViewModel! // Asegúrate de inicializar esto en algún momento

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        // Configurar el mapa con las coordenadas del país
        let countryLocation = CLLocationCoordinate2D(latitude: viewModel.countryLatitude, longitude: viewModel.countryLongitude)
        let countryAnnotation = MKPointAnnotation()
        countryAnnotation.coordinate = countryLocation
        mvMap.addAnnotation(countryAnnotation)

        // Configurar el nombre del país
        lbName.text = viewModel.countryName
    }

    @IBAction func btLikesTap(_ sender: Any) {
        // Aumentar los likes al presionar el botón
        viewModel.updateLikes()
        // Actualizar la vista con el nuevo número de likes
        btLikes.setTitle("Likes: \(viewModel.likes)", for: .normal)
    }
}
