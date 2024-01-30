//
//  DetailViewController.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var mvMap: MKMapView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var btLikes: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func btLikesTap(_ sender: Any) {
    }
}
