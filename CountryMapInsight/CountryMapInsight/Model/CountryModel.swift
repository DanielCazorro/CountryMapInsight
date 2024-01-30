//
//  CountryModel.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 30/1/24.
//

import Foundation
import MapKit

// Definición de la estructura 'Country' para representar un país con su nombre, capital y coordenadas
struct Country {
    let name: String // Nombre del país
    let capital: String // Capital del país
    let countryCoordinate: CLLocationCoordinate2D // Coordenadas geográficas del país
    let capitalCoordinate: CLLocationCoordinate2D // Coordenadas geográficas de la capital
    var likes: Int = 0 // Contador de likes
}
