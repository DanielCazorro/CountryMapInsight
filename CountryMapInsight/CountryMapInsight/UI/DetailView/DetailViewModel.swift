//
//  DetailViewModel.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import Foundation
import MapKit

class DetailViewModel {
    
    private let country: CountryModel?
    private let showCountry: Bool
    private let tableViewModel: TableViewModel = TableViewModel(dataManager: TableViewDataManager())
    
    var likeUpdateHandler: (() -> Void)?
    
    init(country: CountryModel?, showCountry: Bool) {
        self.country = country
        self.showCountry = showCountry
    }
    
    // Functions
    func getLikes() -> Int {
        country?.likes ?? 0
    }
    
    func getName() -> String? {
        showCountry ? country?.name : country?.capital
    }
    
    func getCoordenates() -> CLLocationCoordinate2D? {
        showCountry ? country?.countryCoordinates : country?.capitalCoordinates
    }
    
    func tapLike(completion: () -> Void) {
        country?.likes += 1
        likeUpdateHandler?()
        completion()
    }
}
