//
//  TableViewDataManager.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 30/1/24.
//

import UIKit
import MapKit

class TableViewDataManager {
    var countries: [CountryModel] = []
    
    init() {
        // Aquí inicializaremos el array de países con datos actualizados
        
        // España
        let spain = CountryModel(name: "Spain", capital: "Madrid", countryCoordinates: CLLocationCoordinate2D(latitude: 40.463667, longitude: -3.74922), capitalCoordinates: CLLocationCoordinate2D(latitude: 40.416775, longitude: -3.703790))
        
        // Francia
        let france = CountryModel(name: "France", capital: "Paris", countryCoordinates: CLLocationCoordinate2D(latitude: 48.856613, longitude: 2.352222), capitalCoordinates: CLLocationCoordinate2D(latitude: 48.856613, longitude: 2.352222))
        
        // Italia
        let italy = CountryModel(name: "Italy", capital: "Rome", countryCoordinates: CLLocationCoordinate2D(latitude: 41.902782, longitude: 12.496366), capitalCoordinates: CLLocationCoordinate2D(latitude: 41.902782, longitude: 12.496366))
        
        // Alemania
        let germany = CountryModel(name: "Germany", capital: "Berlin", countryCoordinates: CLLocationCoordinate2D(latitude: 52.520008, longitude: 13.404954), capitalCoordinates: CLLocationCoordinate2D(latitude: 52.520008, longitude: 13.404954))
        
        // Reino Unido
        let uk = CountryModel(name: "United Kingdom", capital: "London", countryCoordinates: CLLocationCoordinate2D(latitude: 51.507351, longitude: -0.127758), capitalCoordinates: CLLocationCoordinate2D(latitude: 51.507351, longitude: -0.127758))
        
        // Agregar los países al array
        countries = [spain, france, italy, germany, uk]
    }
}
