//
//  TableViewController.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias on 24/1/24.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    // Instancia de TableViewDataManager para gestionar los datos de la tabla
    let dataManager = TableViewDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configurar la tabla
        tableView.dataSource = self
        tableView.delegate = self
        
        // Registra la celda personalizada
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
}

// MARK: - UITableViewDataSource
extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let country = dataManager.countries[indexPath.row]
        
        // Configurar la celda con los datos del país
        cell.lbCountry.text = country.name
        cell.lbLikes.text = "\(country.likes) Likes"
        
        // Configurar el closure en TableViewCell para manejar la selección de la celda
        cell.didSelectCell = {
            let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
            detailVC.country = country  // Pasar el objeto CountryModel seleccionado al DetailViewController
            self.navigationController?.pushViewController(detailVC, animated: true)
        }
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
