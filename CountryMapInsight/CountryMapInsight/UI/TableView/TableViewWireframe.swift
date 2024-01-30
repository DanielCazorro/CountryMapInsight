//
//  TableViewWireframe.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 30/1/24.
//

import UIKit
import MapKit

class TableViewWireframe {
    static func navigateToCountryDetail(from viewController: UIViewController, with country: Country, title: String) {
        let detailViewController = DetailViewController(nibName: "DetailViewController", bundle: nil)
        let detailViewModel = DetailViewModel(country: country, countryCoordinate: <#CLLocationCoordinate2D#>)
        detailViewController.viewModel = detailViewModel
        detailViewController.title = title
        viewController.navigationController?.pushViewController(detailViewController, animated: true)
    }



}
