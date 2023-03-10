//
//  NavigationView.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 29/12/22.
//

import UIKit
import SnapKit
class NavigationView: BaseView {
    let firstItem = UIButton()
    private let secondItem = UIButton()
    private let thirdItem = UIButton()
    
    private var navTitle: UILabel = {
        let label = UILabel()

        label.font = Resources.fonts.interBold(size: 20)
        return label
    }()
    
    init(title:String,firstItem:UIImage,secondItem:UIImage,thirdItem:UIImage) {
        super.init(frame: .zero)
        self.navTitle.text = title
        self.firstItem.setImage(firstItem, for: .normal)
        self.secondItem.setImage(secondItem, for: .normal)
        self.thirdItem.setImage(thirdItem, for: .normal)
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension NavigationView {
    override func addViews() {
        super.addViews()
        addSubview(navTitle)
        addSubview(firstItem)
        addSubview(thirdItem)
        addSubview(secondItem)
    }
    
    override func layoutViews() {
        super.layoutViews()
        navTitle.snp.makeConstraints { make in
            make.left.equalTo(35)
            make.bottom.equalTo(-15)
        }
        firstItem.snp.makeConstraints { make in
            make.left.equalTo(navTitle.snp.right).offset(20)
            make.centerY.equalTo(navTitle.snp.centerY)
        }
        thirdItem.snp.makeConstraints { make in
            make.centerY.equalTo(firstItem)
            make.right.equalTo(secondItem.snp.left).offset(-40)
        }
        secondItem.snp.makeConstraints { make in
            make.centerY.equalTo(firstItem)
            make.right.equalToSuperview().offset(-41)
        }
    }
    
    override func configureViews() {
        super.configureViews()
        backgroundColor = .white
    }
}
