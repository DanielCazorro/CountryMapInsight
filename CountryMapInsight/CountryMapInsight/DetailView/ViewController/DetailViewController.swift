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
    
    
    //MARK: - IBOutlet
    @IBOutlet weak var mvMap: MKMapView!
    @IBOutlet weak var lbName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
}
