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
        let spain = CountryModel(name: "Spain", capital: "Madrid", countryCoordinates: CLLocationCoordinate2D(latitude: 40.463667, longitude: -3.74922), capitalCoordinates: CLLocationCoordinate2D(latitude: 40.416775, longitude: -3.703790), likes: 0)
        
        // Francia
        let france = CountryModel(name: "France", capital: "Paris", countryCoordinates: CLLocationCoordinate2D(latitude: 46.603354, longitude: 1.888334), capitalCoordinates: CLLocationCoordinate2D(latitude: 48.856613, longitude: 2.352222), likes: 0) // Corregida la latitud y longitud de Francia

        
        // Italia
        let italy = CountryModel(name: "Italy", capital: "Rome", countryCoordinates: CLLocationCoordinate2D(latitude: 41.902782, longitude: 12.496366), capitalCoordinates: CLLocationCoordinate2D(latitude: 41.902244, longitude: 12.457980), likes: 0) // Corregida la latitud y longitud de Roma

        
        // Alemania
        let germany = CountryModel(name: "Germany", capital: "Berlin", countryCoordinates: CLLocationCoordinate2D(latitude: 51.165691, longitude: 10.451526), capitalCoordinates: CLLocationCoordinate2D(latitude: 52.520008, longitude: 13.404954), likes: 0) // Corregida la latitud y longitud de Alemania

        
        // Reino Unido
        let uk = CountryModel(name: "United Kingdom", capital: "London", countryCoordinates: CLLocationCoordinate2D(latitude: 51.507351, longitude: -0.127758), capitalCoordinates: CLLocationCoordinate2D(latitude: 51.509865, longitude: -0.118092), likes: 0) // Corregida la latitud y longitud de Londres

        
        // Agregar los países al array
        countries = [spain, france, italy, germany, uk]
        
        // Australia
        let australia = CountryModel(name: "Australia", capital: "Canberra", countryCoordinates: CLLocationCoordinate2D(latitude: -35.308056, longitude: 149.124444), capitalCoordinates: CLLocationCoordinate2D(latitude: -35.297590, longitude: 149.101267), likes: 0)

        // Canada
        let canada = CountryModel(name: "Canada", capital: "Ottawa", countryCoordinates: CLLocationCoordinate2D(latitude: 45.421530, longitude: -75.697193), capitalCoordinates: CLLocationCoordinate2D(latitude: 45.421530, longitude: -75.697193), likes: 0)

        // Brazil
        let brazil = CountryModel(name: "Brazil", capital: "Brasília", countryCoordinates: CLLocationCoordinate2D(latitude: -15.780148, longitude: -47.929169), capitalCoordinates: CLLocationCoordinate2D(latitude: -15.793889, longitude: -47.882778), likes: 0)

        // China
        let china = CountryModel(name: "China", capital: "Beijing", countryCoordinates: CLLocationCoordinate2D(latitude: 39.904200, longitude: 116.407396), capitalCoordinates: CLLocationCoordinate2D(latitude: 39.904200, longitude: 116.407396), likes: 0)

        // Russia
        let russia = CountryModel(name: "Russia", capital: "Moscow", countryCoordinates: CLLocationCoordinate2D(latitude: 55.755825, longitude: 37.617298), capitalCoordinates: CLLocationCoordinate2D(latitude: 55.755825, longitude: 37.617298), likes: 0)

        // India
        let india = CountryModel(name: "India", capital: "New Delhi", countryCoordinates: CLLocationCoordinate2D(latitude: 28.613939, longitude: 77.209023), capitalCoordinates: CLLocationCoordinate2D(latitude: 28.613939, longitude: 77.209023), likes: 0)

        // Japan
        let japan = CountryModel(name: "Japan", capital: "Tokyo", countryCoordinates: CLLocationCoordinate2D(latitude: 35.689487, longitude: 139.691711), capitalCoordinates: CLLocationCoordinate2D(latitude: 35.689487, longitude: 139.691711), likes: 0)

        // South Africa
        let southAfrica = CountryModel(name: "South Africa", capital: "Pretoria", countryCoordinates: CLLocationCoordinate2D(latitude: -25.746111, longitude: 28.188056), capitalCoordinates: CLLocationCoordinate2D(latitude: -25.746111, longitude: 28.188056), likes: 0)

        // Argentina
        let argentina = CountryModel(name: "Argentina", capital: "Buenos Aires", countryCoordinates: CLLocationCoordinate2D(latitude: -34.603722, longitude: -58.381592), capitalCoordinates: CLLocationCoordinate2D(latitude: -34.603722, longitude: -58.381592), likes: 0)

        // Mexico
        let mexico = CountryModel(name: "Mexico", capital: "Mexico City", countryCoordinates: CLLocationCoordinate2D(latitude: 19.432608, longitude: -99.133209), capitalCoordinates: CLLocationCoordinate2D(latitude: 19.432608, longitude: -99.133209), likes: 0)
        
        
        // Namek
        let namek = CountryModel(name: "Namek: El gran planeta verde donde las esferas de dragón invocaban a Polunga", capital: "Freezer very crazy fue allí por ellas, pero goku se volvió mas crazy como He-man y lo convirtió cual palomita en microondas", countryCoordinates: CLLocationCoordinate2D(latitude: 19.432608, longitude: -99.133209), capitalCoordinates: CLLocationCoordinate2D(latitude: 19.432608, longitude: -99.133209), likes: 0)

        // Agregar los países al array
        countries += [australia, canada, brazil, china, russia, india, japan, southAfrica, argentina, mexico, namek]

    }
}
