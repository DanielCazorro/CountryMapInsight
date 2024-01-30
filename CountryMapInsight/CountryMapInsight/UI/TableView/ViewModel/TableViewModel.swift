//
//  TableViewModel.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import Foundation
import CoreLocation

class TableViewModel {
    private var countries: [Country] = CountryProvider.countries
    
    func numberOfCountries() -> Int {
        return countries.count
    }
    
    func country(at index: Int) -> String {
        return countries[index].name
    }
    
    func capitalForCountry(_ countryName: String) -> String? {
        return countries.first { $0.name == countryName }?.capital
    }
    
    func coordinateForCountry(_ countryName: String) -> CLLocationCoordinate2D? {
        return countries.first { $0.name == countryName }?.coordinate
    }
}

