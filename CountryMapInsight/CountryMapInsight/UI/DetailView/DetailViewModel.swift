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
    
    init(country: CountryModel?, showCountry: Bool) {
        self.country = country
        self.showCountry = showCountry
    }
    
    func getName() -> String? {
        showCountry ? country?.name : country?.capital
    }
    
    func getCoordenates() -> CLLocationCoordinate2D? {
        showCountry ? country?.countryCoordinates : country?.capitalCoordinates
    }
    
}

