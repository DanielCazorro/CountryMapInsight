//
//  TableViewModel.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import Foundation

class TableViewModel {
    
    // Properties
    private var dataManager: TableViewDataManager
    private var countries: [CountryModel] { dataManager.countries }
    
    var likeUpdateHandler: (() -> Void)?
    
    // Initialization
    init(dataManager: TableViewDataManager) {
        self.dataManager = dataManager
    }
    
    // Functions
    func countCountries() -> Int {
        countries.count
    }
    
    func getCountry(for row: Int) -> CountryModel {
        countries[row]
    }
}
