//
//  DetailViewWireframe.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 30/1/24.
//

import UIKit

class DetailViewWireframe {
    
    
    // MARK: - Properties
    
    var country: CountryModel?
    var showCountry: Bool
    var closure: (() -> Void)? // Definir el cierre como un opcional
    
    init(country: CountryModel? = nil, showCountry: Bool, closure: (() -> Void)? = nil) {
        self.country = country
        self.showCountry = showCountry
        self.closure = closure
    }
    
    var viewController: DetailViewController {
        //Generating module components
        let viewController = DetailViewController()
        let viewModel: DetailViewModel = createViewModel(country: country, showCountry: showCountry)
        viewController.set(viewModel: viewModel)
        return viewController
    }
    
    // MARK:- Private methods
    private func createViewModel(country: CountryModel?, showCountry: Bool) -> DetailViewModel {
        return DetailViewModel(country: country, showCountry: showCountry)
    }
    
    // MARK: - Public Methods
    func push(navigation: UINavigationController?) {
        guard let navigation = navigation else {return}
        navigation.pushViewController(viewController, animated: true)
    }
}
