//
//  TableViewWireframe.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 30/1/24.
//

import UIKit

class TableViewWireframe {
    static func navigateToCountryDetail(from viewController: UIViewController, with country: Country) {
        // Instanciar el controlador de vista de detalle desde su XIB
        let detailViewController = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        // Configurar el ViewModel del controlador de vista de detalle
        let detailViewModel = DetailViewModel(country: country)
        detailViewController.viewModel = detailViewModel
        
        // Realizar la navegación
        viewController.navigationController?.pushViewController(detailViewController, animated: true)
    }
}

