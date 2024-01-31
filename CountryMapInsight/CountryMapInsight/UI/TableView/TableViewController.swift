//
//  TableViewController.swift
//  CountryMapInsight
//
//  Created by Daniel Cazorro Frias on 24/1/24.
//

import UIKit
import MapKit

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
        cell.configure(with: country)
        
        // Manejar la selección de la celda
        cell.didSelectCell = { [weak self] in
            guard let self = self else { return }
            
            let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
            detailVC.country = country
            detailVC.isCapitalDetail = false // Indicar que se muestra el detalle del país
            
            // Configurar el closure para actualizar los likes en la celda correspondiente
            detailVC.didUpdateLikes = { [weak self] likes in
                self?.updateLikes(likes, at: indexPath)
            }
            
            self.navigationController?.pushViewController(detailVC, animated: true)
        }
        
        
        // Manejar la selección del botón de la capital
        cell.didSelectCapitalButton = { [weak self] in
            guard let self = self else { return }
            
            let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
            detailVC.country = country
            detailVC.isCapitalDetail = true // Indicar que se muestra el detalle de la capital
            
            // Configurar el closure para actualizar los likes en la celda correspondiente
            detailVC.didUpdateLikes = { [weak self] likes in
                self?.updateLikes(likes, at: indexPath)
            }
            
            self.navigationController?.pushViewController(detailVC, animated: true)
        }
        
        return cell
    }
    
    
    func updateLikes(_ likes: Int, at indexPath: IndexPath) {
        // Actualizar los likes en el modelo de datos
        dataManager.countries[indexPath.row].likes = likes
        
        // Actualizar la celda correspondiente en la tabla
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}

// MARK: - UITableViewDelegate
extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? TableViewCell else {
            return
        }
        
        cell.didSelectCell?()
    }
}
