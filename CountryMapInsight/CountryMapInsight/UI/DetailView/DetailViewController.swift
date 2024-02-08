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
    
    // MARK: - Funcions
    func set(viewModel: DetailViewModel) {
        self.viewModel = viewModel
    }
    
    func initLabel() {
        lbName.text = viewModel?.getName()
        btLikes.setTitle("Likes: \(viewModel?.getLikes() ?? 0)", for: .normal)
    }
    
    func centerMap() {
        if let localization = viewModel?.getCoordenates() {
            mvMap.centerCoordinate = localization
        }
    }
    
    // MARK: - IBActions
    @IBAction func tapBTLike(_ sender: Any) {
        viewModel?.tapLike {
            DispatchQueue.main.async { [weak self] in
                self?.btLikes.setTitle("Likes: \(self?.viewModel?.getLikes() ?? 0)", for: .normal)
                self?.viewModel?.likeUpdateHandler?()
            }
        }
    }
}
