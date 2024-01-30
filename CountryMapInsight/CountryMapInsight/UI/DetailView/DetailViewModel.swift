//
//  DetailViewModel.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import Foundation
import MapKit

class DetailViewModel {
    var countryName: String
    var countryLatitude: Double
    var countryLongitude: Double
    var likes: Int

    init(country: Country) {
        self.countryName = country.name
        self.countryLatitude = country.countryCoordinate.latitude
        self.countryLongitude = country.countryCoordinate.longitude
        self.likes = country.likes
    }

    func updateLikes() {
        likes += 1
    }
}

