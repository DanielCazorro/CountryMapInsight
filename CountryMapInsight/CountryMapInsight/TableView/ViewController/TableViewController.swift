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
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
    }
    
    // MARK: - Acciones
    @objc func tapBtCapital(_ sender: UIButton) {
        guard let cell = sender.superview as? TableViewCell,
              let indexPath = tableView.indexPath(for: cell) else {
            return
        }
        showDetail(viewModel.countries[indexPath.row], isCapital: true)
    }
    
    // MARK: - Funciones
    
    func showDetail(_ nombre: String, isCapital: Bool = false) {
        // Implementa la lógica para mostrar la vista de detalle aquí
    }
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showDetail(viewModel.countries[indexPath.row])
    }
    
}
