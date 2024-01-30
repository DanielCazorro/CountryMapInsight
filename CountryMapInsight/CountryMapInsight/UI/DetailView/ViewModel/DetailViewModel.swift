//
//  DetailViewModel.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import Foundation
import MapKit

class DetailViewModel {
    let countryName: String
    let cityName: String
    let countryCoordinate: CLLocationCoordinate2D
    let capitalCoordinate: CLLocationCoordinate2D

    init(countryName: String, cityName: String, countryCoordinate: CLLocationCoordinate2D, capitalCoordinate: CLLocationCoordinate2D) {
        self.countryName = countryName
        self.cityName = cityName
        self.countryCoordinate = countryCoordinate
        self.capitalCoordinate = capitalCoordinate
    }
}
