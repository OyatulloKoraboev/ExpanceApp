//
//  AddTableViewCell.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 15/01/23.
//

import UIKit
import SnapKit
class AddTableViewCell: UITableViewCell {

    let mainView = UIView()
    let textField = UITextField()
//    var titles:[String] = ["title","amount","transaction type","Tag","When","Note","Created at"]
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(mainView)
        mainView.addSubview(textField)
        
        selectionStyle = .none
        
        mainView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.height.equalTo(100)
            make.width.equalToSuperview()
        }
        textField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(60)
        }
        textField.backgroundColor = Resources.colors.background
        
        textField.layer.cornerRadius = 5
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

