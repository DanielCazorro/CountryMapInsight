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
    private let detailViewWireframe = DetailViewWireframe(showCountry: false)
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initiateTable()
        configureTitleTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Functions
    
    private func configureTitleTableView() {
        // Configurar el título de la tabla
        let tableTitleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 24))
        tableTitleLabel.text = "Países y Capitales"
        tableTitleLabel.textAlignment = .center
        tableTitleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        tableView.tableHeaderView = tableTitleLabel
    }
    
    /// Inicializa y configura la tabla y la celda
    func initiateTable() {
        // Configurar la tabla
        tableView.dataSource = self
        tableView.delegate = self
        
        // Registra la celda personalizada
        tableView.register(UINib(nibName: TableViewCell.identifier, bundle: nil), forCellReuseIdentifier: TableViewCell.identifier)
    }
    
    func set(viewModel: TableViewModel) {
        self.viewModel = viewModel
    }
    
    @objc func connected(sender: UIButton) {
        let country = viewModel?.getCountry(for: sender.tag)
        detailViewWireframe.showCountry = false
        detailViewWireframe.country = country // Asigna el país al detalle antes de mostrarlo
        detailViewWireframe.push(navigation: navigationController)
    }
}

// MARK: - UITableViewDataSource
extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.countCountries() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: TableViewCell.identifier, for: indexPath)as? TableViewCell
        else {
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
        detailViewWireframe.showCountry = true
        detailViewWireframe.country = country // Asigna el país al detalle antes de mostrarlo
        detailViewWireframe.push(navigation: navigationController)
    }
}
