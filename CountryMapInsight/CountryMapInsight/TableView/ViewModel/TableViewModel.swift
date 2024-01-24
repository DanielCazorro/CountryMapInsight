//
//  TableViewModel.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import Foundation

class TableViewModel {
    var countries: [String] = ["España", "Francia", "Alemania", "Italia"]

    func numberOfCountries() -> Int {
        return countries.count
    }

    func country(at index: Int) -> String {
        return countries[index]
    }
}
