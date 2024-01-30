//
//  DetailViewModel.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import Foundation
import MapKit

class DetailViewModel {
    let country: Country
    let countryCoordinate: CLLocationCoordinate2D

    init(country: Country, countryCoordinate: CLLocationCoordinate2D) {
        self.country = country
        self.countryCoordinate = countryCoordinate
    }
}

