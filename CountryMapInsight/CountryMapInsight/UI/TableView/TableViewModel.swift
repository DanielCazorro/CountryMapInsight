//
//  TableViewModel.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import Foundation

class TableViewModel {
    private var dataManager: TableViewDataManager
    
    private var countries: [CountryModel] { dataManager.countries }
    
    init(dataManager: TableViewDataManager) {
        self.dataManager = dataManager
    }
    
    func countCountries() -> Int {
        countries.count
    }
    
    func getCountry(for row: Int) -> CountryModel {
        countries[row]
    }
    
    func tap(completion: @escaping () -> Void) {
        countries.first?.likes += 1
        completion() // Llamar al closure para notificar la acción
    }}
