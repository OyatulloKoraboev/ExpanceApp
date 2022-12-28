//
//  DashboardView.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 28/12/22.
//

import UIKit

class CardView: BaseView {
    
    let titleLabel:UILabel = {
        let label = UILabel()
        
        return label
    }()

    let costLabel:UILabel = {
        let label = UILabel()
        
        return label
    }()
    let iconView:UIImageView = {
       
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CardView {
    
    override func addViews() {
        super.addViews()
    }
    
    override func layoutViews() {
        super.layoutViews()
    }
    
    override func configure() {
        super.configure()
    }
}
