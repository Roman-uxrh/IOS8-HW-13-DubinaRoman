//
//  CustomTableViewCell.swift
//  IOS8-HW-13-DubinaRoman
//
//  Created by admin on 17.01.2023.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {
    
    static let nameID = "CustomTableViewCell"
    
    var model: Model? {
        didSet {
            image.image = UIImage(named: model?.image ?? "")
            firstLabel.text = model?.firstLabel
            secondLabel.text = model?.secondLabel
        }
    }
    
    // MARK: - Outlets
    
    private let image: UIImageView = {
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
        addSubview(image)
        addSubview(firstLabel)
        addSubview(secondLabel)
    }
    
    private func setupLayout() {
        
        image.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(10)
            make.width.height.equalTo(32)
            make.centerY.equalTo(contentView).offset(22)
        }
        
        firstLabel.snp.makeConstraints { make in
            make.centerY.equalTo(contentView).offset(22)
            make.left.equalTo(image.snp.right).offset(15)
        }
        
        secondLabel.snp.makeConstraints { make in
            make.centerY.equalTo(contentView).offset(22)
            make.left.equalTo(contentView).offset(210) //лена я не могу понять как привезать к левому краю ячейки, сделал так, но на SE смотриться так себе
            make.width.equalTo(150)
        }
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.model = nil
    }
}
