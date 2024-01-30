//
//  TableViewController.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias on 24/1/24.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel = TableViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Registrar la clase de la celda o el archivo XIB
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let country = viewModel.countries[indexPath.row]
        cell.lbCountry.text = country.name
        cell.lbLikes.text = "\(country.likes)"
        
        // Configurar la acción del botón "Capital" para actualizar los likes y recargar la celda
        cell.tapBtCapitalAction = { [weak self] in
            guard let self = self else { return }
            var selectedCountry = self.viewModel.countries[indexPath.row]
            selectedCountry.likes += 1 // Incrementar los likes
            tableView.reloadRows(at: [indexPath], with: .automatic) // Recargar la celda
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCountry = viewModel.countries[indexPath.row]
        let capital = selectedCountry.capital
        TableViewWireframe.navigateToCountryDetail(from: self, with: selectedCountry, title: capital)
    }


}
