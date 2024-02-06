//
//  CountryModel.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 30/1/24.
//

import Foundation
import MapKit

// Estructura que representa un país
class CountryModel {
    
    let name: String  // Nombre del país
    let capital: String  // Nombre de la capital del país
    let countryCoordinates: CLLocationCoordinate2D // Coordenadas del país
    let capitalCoordinates: CLLocationCoordinate2D   // Coordenadas de la capital del país
    var likes: Int = 0  // Contador de likes, inicializado en 0
    
    init(name: String, capital: String, countryCoordinates: CLLocationCoordinate2D, capitalCoordinates: CLLocationCoordinate2D, likes: Int) {
        self.name = name
        self.capital = capital
        self.countryCoordinates = countryCoordinates
        self.capitalCoordinates = capitalCoordinates
        self.likes = likes
    }
}
