//
//  TableViewModel.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import Foundation

class TableViewModel {
    var countries: [Country] = []
    
    init() {
        // Inicializamos el ViewModel con los países
        self.countries = TableViewDataManager.countries
    }
    
    func updateLikes(for country: Country) {
        // Método para actualizar el contador de likes de un país
        if let index = countries.firstIndex(where: { $0.name == country.name }) {
            countries[index].likes += 1
        }
    }
}

