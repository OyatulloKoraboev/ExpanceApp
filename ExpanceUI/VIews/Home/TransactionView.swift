//
//  TransactionView.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 07/01/23.
//

import UIKit

class TransactionView: BaseView {
    let stackView =  UIStackView()
    let firstHzStackView = UIStackView()
    let secondHzStackView = UIStackView()
    let imageBack = UIView()
    let iconView:UIImageView = {
        let image = UIImageView()
        image.image = Resources.images.tv
        
        return image
    }()
    
    
    let titleLabel:UILabel = {
        let label = UILabel()
        label.text = "Cashback Offer"
        label.font = Resources.fonts.interBold(size: 16)
        return label
        
    }()
    let typeLabel:UILabel = {
        let label = UILabel()
        label.text = "Entertainment"
        label.font = Resources.fonts.interLight(size: 12)
        return label
        
    }()
    let cashbackLabel:UILabel = {
        let label = UILabel()
        label.text = "+$30"
        label.textColor = Resources.colors.transactionUp
        label.font = Resources.fonts.interBold(size: 16)
        return label
        
    }()
    let dateLabel:UILabel = {
        let label = UILabel()
        label.text = "Oct 30, 2021"
        label.font = Resources.fonts.interLight(size: 10)
        return label
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension TransactionView {
    override func addViews() {
        super.addViews()
        addSubview(imageBack)
        addSubview(iconView)
        
        addSubview(firstHzStackView)
        firstHzStackView.addArrangedSubview(titleLabel)
        firstHzStackView.addArrangedSubview(cashbackLabel)
        addSubview(secondHzStackView)
        secondHzStackView.addArrangedSubview(typeLabel)
        secondHzStackView.addArrangedSubview(dateLabel)
        
//        stackView.addArrangedSubview(titleLabel)
//        stackView.addArrangedSubview(subTitleLabel)
//        stackView.addArrangedSubview(cashbackLabel)
//        stackView.addArrangedSubview(dateLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
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
        
        imageBack.snp.makeConstraints { make in
            make.left.top.equalToSuperview().offset(12)
            make.width.height.equalTo(75)
        }
        
        iconView.snp.makeConstraints { make in
            make.left.equalTo(imageBack.snp.left).offset(27)
            make.top.equalTo(imageBack.snp.top).offset(27)
        }
    }
    
    override func configureViews() {
        super.configureViews()
        backgroundColor = .white
        imageBack.backgroundColor = Resources.colors.transactionCard
        imageBack.layer.cornerRadius = 5
        layer.cornerRadius = 10
        
        
    }
}
