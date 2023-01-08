//
//  NavigationView.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 29/12/22.
//

import UIKit
import SnapKit
class NavigationView: BaseView {
    private let chevronButton = IconButtonView(image: Resources.images.chevron)
    private let threeDotsButton = IconButtonView(image: Resources.images.threedots)
    private let bulpButton = IconButtonView(image: Resources.images.bulp)
    
    private var navTitle: UILabel = {
        let label = UILabel()
        label.text = "Dashboard".capitalized
        label.font = Resources.fonts.interBold(size: 20)
        return label
    }()
    

}

extension NavigationView {
    override func addViews() {
        super.addViews()
        addSubview(navTitle)
        addSubview(chevronButton)
        addSubview(bulpButton)
        addSubview(threeDotsButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        navTitle.snp.makeConstraints { make in
            make.left.equalTo(35)
            make.bottom.equalTo(-15)
        }
        chevronButton.snp.makeConstraints { make in
            make.left.equalTo(navTitle.snp.right).offset(20)
            make.height.width.equalTo(25)
            make.centerY.equalTo(navTitle.snp.centerY)
        }
        bulpButton.snp.makeConstraints { make in
            make.centerY.equalTo(chevronButton)
            make.right.equalTo(threeDotsButton.snp.left).offset(-40)
        }
        threeDotsButton.snp.makeConstraints { make in
            make.centerY.equalTo(chevronButton)
            make.right.equalToSuperview().offset(-41)
        }
    }
    
    override func configureViews() {
        super.configureViews()
        backgroundColor = .white
    }
}
