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
    
    // MARK: - Actions

    @objc private func touchSwich(_ sender: UISwitch) {
        let indexPathRow = sender.tag
        print("Нажата ячейка в секции № 0, ячейка № \(indexPathRow)")
    }
    
}

    // MARK: - TableView

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        44
    }
    
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
        
        let switchView = UISwitch(frame: .zero)
        switchView.setOn(false, animated: true)
        switchView.addTarget(self, action: #selector(touchSwich), for: .valueChanged)
        switchView.tag = indexPath.row
        
        if indexPath.section == 0 && (indexPath.row == 0 || indexPath.row == 5) {
            cell?.accessoryView = switchView
        } else {
            cell?.accessoryType = .disclosureIndicator
        }
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailView()
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.section == 0 && (indexPath.row == 0 || indexPath.row == 5) {
            // лена я не знаю что здесь написать (логика для перехода на новый экран) но вроде и так работает
        } else {
            viewController.model = model[indexPath.section][indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

