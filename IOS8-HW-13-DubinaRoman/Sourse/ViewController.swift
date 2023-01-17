//
//  ViewController.swift
//  IOS8-HW-13-DubinaRoman
//
//  Created by admin on 17.01.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var models: Model?
    
    // MARK: - Outlets
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.nameID)
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupView()
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        
        tableView.snp.makeConstraints { make in
            make.top.left.bottom.right.equalTo(view)
        }
    }
}

    // MARK: - TableView

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        Model.model.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Model.model[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.nameID, for: indexPath) as? CustomTableViewCell
        cell?.model = Model.model[indexPath.section][indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        return cell ?? UITableViewCell()
    }
    
}
