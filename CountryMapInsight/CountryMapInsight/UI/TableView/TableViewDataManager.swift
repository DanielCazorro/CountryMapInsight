//
//  TableViewDataManager.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 30/1/24.
//

import Foundation
import MapKit

class TableViewDataManager {
    static var countries: [Country] = [
        // Ejemplos de países con sus nombres, capitales y coordenadas geográficas
        Country(name: "Spain", capital: "Madrid", countryCoordinate: CLLocationCoordinate2D(latitude: 40.4637, longitude: -3.7492), capitalCoordinate: CLLocationCoordinate2D(latitude: 40.4168, longitude: -3.7038)),
        Country(name: "France", capital: "Paris", countryCoordinate: CLLocationCoordinate2D(latitude: 46.6033, longitude: 1.8883), capitalCoordinate: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)),
        Country(name: "Germany", capital: "Berlin", countryCoordinate: CLLocationCoordinate2D(latitude: 51.1657, longitude: 10.4515), capitalCoordinate: CLLocationCoordinate2D(latitude: 52.5200, longitude: 13.4050)),
        Country(name: "Italy", capital: "Rome", countryCoordinate: CLLocationCoordinate2D(latitude: 41.8719, longitude: 12.5674), capitalCoordinate: CLLocationCoordinate2D(latitude: 41.9028, longitude: 12.4964)),
    ]
}
