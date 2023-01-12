//
//  TransactionCellTableViewCell.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 12/01/23.
//

import UIKit

class TransactionCellTableViewCell: UITableViewCell {
    private let stackView =  UIStackView()
    private let firstHzStackView = UIStackView()
    private let secondHzStackView = UIStackView()
    private let mainView = UIView()
    private let iconBack = UIView()
    
    let iconView:UIImageView = {
        let image = UIImageView()
        
        return image
    }()
    
    let titleLabel:UILabel = {
        let label = UILabel()
        label.font = Resources.fonts.interBold(size: 16)
        return label
        
    }()
    let typeLabel:UILabel = {
        let label = UILabel()
        label.font = Resources.fonts.interLight(size: 12)
        return label
        
    }()
    let cashbackLabel:UILabel = {
        let label = UILabel()
        label.textColor = Resources.colors.transactionUp
        label.font = Resources.fonts.interBold(size: 16)
        return label
        
    }()
    let dateLabel:UILabel = {
        let label = UILabel()
        label.font = Resources.fonts.interLight(size: 10)
        return label
        
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(mainView)
        mainView.addSubview(iconBack)
        selectionStyle = .none 
        
        iconBack.addSubview(iconView)
        iconBack.snp.makeConstraints { make in
            make.height.width.equalTo(75)
            make.left.equalToSuperview().offset(12)
            make.centerY.equalToSuperview()
        }
        
        mainView.addSubview(firstHzStackView)
        
        firstHzStackView.addArrangedSubview(titleLabel)
        firstHzStackView.addArrangedSubview(cashbackLabel)
        
        mainView.addSubview(secondHzStackView)
        
        secondHzStackView.addArrangedSubview(typeLabel)
        secondHzStackView.addArrangedSubview(dateLabel)
        
        mainView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 6, left: 0, bottom: 6, right: 0))
        }
        
        firstHzStackView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(100)
            make.right.equalToSuperview().offset(-20)
            make.top.equalToSuperview().offset(30)
        }
        
        secondHzStackView.snp.makeConstraints { make in
            make.left.equalTo(firstHzStackView.snp.left)
            make.right.equalTo(firstHzStackView.snp.right)
            make.top.equalTo(firstHzStackView.snp.bottom).offset(12)
            make.height.equalTo(typeLabel.snp.height)
        }
        
        iconView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        backgroundColor = .white
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = 5
        iconBack.backgroundColor = Resources.colors.background
        iconBack.layer.cornerRadius = 5
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


 
