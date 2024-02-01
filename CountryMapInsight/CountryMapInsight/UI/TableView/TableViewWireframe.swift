//
//  TableViewWireframe.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 30/1/24.
//

import UIKit

class TableViewWireframe {
    
    // MARK: - Properties
    
     var viewController: TableViewController {
        // Generating module components
        let viewController = TableViewController()
        let dataManager: TableViewDataManager = createDataManager()
        let viewModel: TableViewModel = createViewModel(with: dataManager)
        viewController.set(viewModel: viewModel)
        return viewController
    }

    // MARK: - Private methods
    private func createViewModel(with dataManager: TableViewDataManager) -> TableViewModel {
        return TableViewModel(dataManager: TableViewDataManager())
    }
    
    private func createDataManager() ->  TableViewDataManager {
        let dataManager = TableViewDataManager()
        return dataManager
    }
       
    // MARK: - Public methods
    func push(navigation: UINavigationController? ) {
        guard let navigation = navigation else { return }
        navigation.pushViewController(viewController,
                                      animated: true)
    }
}
