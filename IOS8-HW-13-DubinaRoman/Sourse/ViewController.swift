//
//  ViewController.swift
//  IOS8-HW-13-DubinaRoman
//
//  Created by admin on 17.01.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var model = Model.mocks
    
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
        setupView()
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setups
    
    private func setupView() {
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
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
        model.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.nameID, for: indexPath) as? CustomTableViewCell
        cell?.model = model[indexPath.section][indexPath.row]
        cell?.imageIconRight.isHidden = model[indexPath.section][indexPath.row].update
        cell?.accessoryType = .disclosureIndicator
        return cell ?? UITableViewCell()
    }
}
