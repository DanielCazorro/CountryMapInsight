//
//  TableViewController.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias on 24/1/24.
//

import UIKit
import MapKit

class TableViewController: UIViewController {
    
    // MARK: - Properties
    private var viewModel: TableViewModel?
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initiateTable()
    }
    
    // MARK: - Functions
    /// Inicializa y configura la tabla y la celda
    func initiateTable() {
        // Configurar la tabla
        tableView.dataSource = self
        tableView.delegate = self
        
        // Registra la celda personalizada
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    
    func set(viewModel: TableViewModel) {
        self.viewModel = viewModel
    }
    
    @objc func connected(sender: UIButton) {
        let country = viewModel?.getCountry(for: sender.tag)
        DetailViewWireframe(country: country, showCountry: false).push(navigation: navigationController)
    }
}

// MARK: - UITableViewDataSource
extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        viewModel?.countCountries() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        
        // Configurar la celda con los datos del país
        cell.updateCell(country: viewModel?.getCountry(for: indexPath.row))
        cell.btCapital.addTarget(self, action: #selector(connected(sender:)), for: .touchUpInside)
        cell.btCapital.tag = indexPath.row
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let country = viewModel?.getCountry(for: indexPath.row)
        DetailViewWireframe(country: country, showCountry: true).push(navigation: navigationController)
    }
}
