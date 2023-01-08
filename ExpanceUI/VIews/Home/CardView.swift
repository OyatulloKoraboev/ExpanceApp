//
//  DashboardView.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 28/12/22.
//

import UIKit
import SnapKit
class CardView: BaseView {
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
    
    init(title:String, cost:String,titleOffsetTop:Int,costOffsetTop:Int) {
        titleLabel.text = title.uppercased()
        costLabel.text = cost
        self.titleOffsetTop = titleOffsetTop
        self.costOffsetTop = costOffsetTop
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CardView {
    
    override func addViews() {
        super.addViews()
        addSubview(titleLabel)
        addSubview(costLabel)

    }
    
    override func layoutViews() {
        super.layoutViews()
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(titleOffsetTop)
            make.centerX.equalToSuperview()
            
        }
        costLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(costOffsetTop)
            make.centerX.equalToSuperview() 
        }
       
    }
    
    override func configureViews() {
        super.configureViews()
        backgroundColor = .white
//        labelStackView.axis = .vertical
    }
}
