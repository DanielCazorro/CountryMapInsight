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
    
    var viewModel: DetailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let viewModel = viewModel {
            lbName.text = viewModel.country.name
            let annotation = MKPointAnnotation()
            annotation.coordinate = viewModel.countryCoordinate
            mvMap.addAnnotation(annotation)
            mvMap.setCenter(viewModel.countryCoordinate, animated: true)
        }
    }

    @IBAction func btLikesTap(_ sender: Any) {
        // Implementa la lógica para aumentar los likes si es necesario
    }
}
