//
//  BaseView.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 28/12/22.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutViews()
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BaseView {
    
    @objc func addViews(){
        
    }
    
    @objc func layoutViews(){
        
    }
    
    @objc func configureViews(){
        
    }
}
