//
//  DetailedNavigation.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 13/01/23.
//

import UIKit

class DetailedNavigation: BaseView {

    let firstItem = UIButton()
    private let secondItem = UIButton()
    private let thirdItem = UIButton()
    
    private var navTitle: UILabel = {
        let label = UILabel()

        label.font = Resources.fonts.interRegular(size: 20)
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
extension DetailedNavigation {
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
            make.centerX.equalToSuperview()
            make.bottom.equalTo(-15)
        }
        firstItem.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(38)
            make.centerY.equalTo(navTitle.snp.centerY)
        }
        thirdItem.snp.makeConstraints { make in
            make.centerY.equalTo(firstItem)
            make.right.equalTo(secondItem.snp.left).offset(-35)
        }
        secondItem.snp.makeConstraints { make in
            make.centerY.equalTo(firstItem)
            make.right.equalToSuperview().offset(-30)
        }
    }
    
    override func configureViews() {
        super.configureViews()
        backgroundColor = .white
    }
}
