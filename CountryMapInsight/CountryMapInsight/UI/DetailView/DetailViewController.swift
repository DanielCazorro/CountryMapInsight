//
//  DetailViewController.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var mvMap: MKMapView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var btLikes: UIButton!
    
    // MARK: - Properties
    var viewModel: DetailViewModel?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initLabel()
        centerMap()
    }
    
    func set(viewModel: DetailViewModel) {
        self.viewModel = viewModel
    }
    
    func initLabel() {
        lbName.text = viewModel?.getName()
    }
    
    func centerMap() {
        if let localization = viewModel?.getCoordenates() {
            mvMap.centerCoordinate = localization
        }
    }
    
}
