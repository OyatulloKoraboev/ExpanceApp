//
//  DashboardView.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 28/12/22.
//

import UIKit
import SnapKit
class SubCardView: BaseView {
    let labelStackView = UIStackView()
    let titleOffsetTop:Int
    let costOffsetTop:Int
    
    var titleLabel:UILabel = {
        let label = UILabel()

        label.tintColor = Resources.colors.inactive
        label.font = Resources.fonts.interLight(size: 10)
        return label
    }()
    
    var costLabel:UILabel = {
        let label = UILabel()
        label.tintColor = Resources.colors.active
        label.font = Resources.fonts.interBold(size: 20)
        return label
    }()
    
    var iconView = UIImageView()

    init(title:String, cost:String,titleOffsetTop:Int,costOffsetTop:Int,iconView:UIImage? = nil) {
        titleLabel.text = title.uppercased()
        titleLabel.textAlignment = iconView == nil ? .center : .left
        costLabel.text = cost
        costLabel.textAlignment = iconView == nil ? .center : .left
        self.titleOffsetTop = titleOffsetTop
        self.costOffsetTop = costOffsetTop
        self.iconView.image = iconView
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SubCardView {
    
    override func addViews() {
        super.addViews()
        addSubview(titleLabel)
        addSubview(costLabel)
        addSubview(iconView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(titleOffsetTop)
            make.left.equalToSuperview().offset(21)
            
        }
        costLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(costOffsetTop)
            make.left.equalToSuperview().offset(21)
        }
        iconView.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-12)
            make.top.equalToSuperview().offset(12)
            make.height.width.equalTo(32)
        }
    }
    
    override func configureViews() {
        super.configureViews()
        backgroundColor = .white
//        labelStackView.axis = .vertical
    }
}

