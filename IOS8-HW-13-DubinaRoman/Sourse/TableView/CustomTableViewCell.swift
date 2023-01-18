//
//  CustomTableViewCell.swift
//  IOS8-HW-13-DubinaRoman
//
//  Created by admin on 17.01.2023.
//

import UIKit
import SnapKit

final class CustomTableViewCell: UITableViewCell {
    
    static let nameID = "CustomTableViewCell"
    
    var model: Model? {
        didSet {
            imageIconLeft.image = UIImage(named: model?.image ?? "")
            firstLabel.text = model?.firstLabel
            secondLabel.text = model?.secondLabel
            imageIconRight.image = UIImage(systemName: randomElement(array: icons))
        }
    }
    
    private let icons = ["1.circle.fill", "2.circle.fill", "3.circle.fill", "4.circle.fill", "5.circle.fill", "6.circle.fill"]
    
    // MARK: - Outlets
    
    let imageIconRight: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.tintColor = .red
        return image
    }()
    
    private let imageIconLeft: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
    
    private let firstLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.textColor = .black
        return label
    }()
    
    private let secondLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.textColor = .systemGray2
        label.textAlignment = .right
        return label
    }()
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(imageIconLeft)
        addSubview(firstLabel)
        addSubview(secondLabel)
        addSubview(imageIconRight)
    }
    
    private func setupLayout() {
        
        imageIconLeft.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.width.height.equalTo(32)
            make.centerY.equalToSuperview()
        }
        
        firstLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(imageIconLeft.snp.right).offset(15)
        }
        
        secondLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().inset(35)
            make.width.equalTo(150)
        }
        
        imageIconRight.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(40)
            make.width.height.equalTo(32)
            make.centerY.equalToSuperview()
        }
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.model = nil
    }
}

func randomElement(array: [String]) -> String {
    array.randomElement() ?? ""
}
