//
//  TableViewController.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias  on 24/1/24.
//

import UIKit

class TableViewController:  UIViewController {
    
    // MARK: - ViewModel
    var viewModel = TableViewModel()
    
    // Propiedad para almacenar el país seleccionado
    var selectedCountry: String?
    
    // Enum para los casos de pulsar la celda o pulsar el botón
    enum ActionType {
        case cellTap
        case buttonTap
    }
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configurar el datasource y delegate de la tabla
        tableView.dataSource = self
        tableView.delegate = self
        
        // Registramos la celda custom
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
    }
    
    // MARK: - Acciones
    
    /// Método para manejar el tap en el botón y la selección de la celda
    @objc func tapBtCapital(_ sender: UIButton) {
        // Obtener el indexPath de la celda
        guard let cell = sender.superview?.superview as? TableViewCell,
              let indexPath = tableView.indexPath(for: cell) else {
            return
        }
        
        // Obtener el país seleccionado
        let selectedCountry = viewModel.country(at: indexPath.row)
        
        // Actualizar selectedCountry con información personalizada
        updateSelectedCountry(selectedCountry, actionType: .buttonTap)
    }
    
    // MARK: - Funciones
    
    // Método para navegar a DetailViewController con información personalizada
    func navigateToDetailViewController(_ selectedCountry: String, customInformation: String) {
        let detailViewController = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detailViewController.selectedCountry = selectedCountry
        detailViewController.customInformation = customInformation
        
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
}

// MARK: - Extensions

// MARK: - UITableViewDataSource
extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Obtener el número de países desde el ViewModel
        return viewModel.numberOfCountries()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configurar la celda
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.lbCountry.text = viewModel.country(at: indexPath.row)
        
        // Configurar el botón para el evento touchUpInside
        cell.btCapital.addTarget(self, action: #selector(tapBtCapital(_:)), for: .touchUpInside)
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension TableViewController: UITableViewDelegate {
    
    // Método para manejar la selección de una celda
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Obtener el país seleccionado
        let selectedCountry = viewModel.country(at: indexPath.row)
        
        // Actualizar selectedCountry con información personalizada
        updateSelectedCountry(selectedCountry, actionType: .cellTap)
    }
    
    // Método para actualizar selectedCountry dependiendo de la acción realizada
    private func updateSelectedCountry(_ country: String, actionType: ActionType) {
        switch actionType {
            
        case .cellTap:
            // Si se selecciona la celda, se actualiza selectedCountry con el país seleccionado
            selectedCountry = country
            
        case .buttonTap:
            // Si se pulsa el botón, se actualiza selectedCountry con información personalizada ("Custom Information" en este caso)
            selectedCountry = "Custom Information"
        }
        
        // Navegar a DetailViewController con la información actualizada
        navigateToDetailViewController(selectedCountry ?? "", customInformation: selectedCountry ?? "")
    }
}
