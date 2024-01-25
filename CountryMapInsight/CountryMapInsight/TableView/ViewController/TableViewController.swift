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
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Registramos la celda custom
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
    }
    
    // MARK: - Acciones
    @objc func tapBtCapital(_ sender: UIButton) {
        
        let vc = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - Funciones
    
}

// MARK: - Extensions

// MARK: - UITableViewDataSource
extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfCountries()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.lbCountry.text = viewModel.country(at: indexPath.row)
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
        
        // Llamar al método tapBtCapital(_:)
        tapBtCapitalForSelectedCountry(selectedCountry)
    }
    
    // Método para manejar el tap en el botón y la selección de la celda
    @objc func tapBtCapitalForSelectedCountry(_ country: String) {
        let detailViewController = DetailViewController(nibName: "DetailViewController", bundle: nil)
        detailViewController.selectedCountry = country
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}
