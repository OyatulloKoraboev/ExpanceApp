//
//  CurrencyTableViewCell.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 18/01/23.
//

import UIKit
import SnapKit
class CurrencyTableViewCell: UITableViewCell {
    private let mainView = UIView()
    let check:UIButton = {
        let button = UIButton()
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 16
        button.backgroundColor = Resources.colors.up
        button.setImage(Resources.images.checkmark, for: .normal)
        return button
    }()
    
    let countryLabel:UILabel = {
        let label = UILabel()
        label.font = Resources.fonts.interRegular(size: 14)
        
        return label
    }()
    
    let codeLabel:UILabel = {
        let label = UILabel()
        label.font = Resources.fonts.interLight(size: 14)
        label.textColor = Resources.colors.inactive
        
        return label
    }()
    
    let flagLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 25)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 20
        label.textAlignment = .center
        label.backgroundColor = UIColor(hexString: "##F9F9F9")
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        self.selectionStyle = .none
        check.backgroundColor?.withAlphaComponent(1)
        addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.height.equalTo(70)
        }
        
    
        mainView.addSubview(flagLabel)
        mainView.addSubview(codeLabel)
        mainView.addSubview(countryLabel)
        mainView.addSubview(check)
        
        flagLabel.snp.makeConstraints { make in
            make.width.height.equalTo(40)
            make.left.equalToSuperview().offset(20)
            make.centerY.equalToSuperview()
        }
        codeLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(flagLabel.snp.right).offset(20)
        }
        
        countryLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(codeLabel.snp.right).offset(20)
        }
        
        check.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.width.height.equalTo(32)
            make.right.equalToSuperview().offset(-20)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
