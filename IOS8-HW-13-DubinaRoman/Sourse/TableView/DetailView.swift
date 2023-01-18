//
//  DetailView.swift
//  IOS8-HW-13-DubinaRoman
//
//  Created by admin on 18.01.2023.
//

import UIKit
import SnapKit

class DetailView: UIViewController {
    
    var model: Model?
    
    // MARK: - Outlets
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .white
        return image
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30, weight: .black)
        return label
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
        fillSettings()
    }
    
    // MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupHierarchy() {
        view.addSubview(image)
        view.addSubview(label)
    }
    
    private func setupLayout() {
        image.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(150)
        }
        
        label.snp.makeConstraints { make in
            make.bottom.equalTo(image.snp.top).offset(-30)
            make.centerX.equalToSuperview()
        }
    }
    
    private func fillSettings() {
        image.image = UIImage(named: model?.image ?? "")
        label.text = model?.firstLabel
    }
}
