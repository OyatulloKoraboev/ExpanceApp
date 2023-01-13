//
//  Menu.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 13/01/23.
//

import UIKit

class Menu: BaseView {
    let firstItem = UIButton()
    let secondItem = UIButton()
    
    
    
    let stackview = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    init(firstTitle:String,secondTitle:String) {
        super.init(frame: .zero)
        self.firstItem.setTitle(firstTitle, for: .normal)
        self.firstItem.setTitleColor(.black, for: .normal)
        self.secondItem.setTitle(secondTitle, for: .normal)
        self.secondItem.setTitleColor(.black, for: .normal)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension Menu {
    override func addViews() {
        super.addViews()
        addSubview(stackview)
        stackview.addArrangedSubview(firstItem)
        stackview.addArrangedSubview(secondItem)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        stackview.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            
        }
        
        firstItem.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(30)
        }
        
        secondItem.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(30)
            
        }

        
    }
    override func configureViews() {
        super.configureViews()
        stackview.axis = .vertical
        firstItem.contentHorizontalAlignment = .left
        secondItem.contentHorizontalAlignment = .left
        firstItem.titleLabel?.font = Resources.fonts.interSemiBold(size: 16)
        secondItem.titleLabel?.font = Resources.fonts.interSemiBold(size: 16)
        self.layer.shadowRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        
    }
}
