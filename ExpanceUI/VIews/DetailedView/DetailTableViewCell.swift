//
//  DetailTableViewCell.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 12/01/23.
//

import UIKit
import SnapKit

class DetailTableViewCell: UITableViewCell {
    var title:UILabel = {
        let label = UILabel()
        label.font = Resources.fonts.interLight(size: 12)
        label.textColor = UIColor(hexString: "#828282")
        
        return label
    }()
    var value:UILabel = {
        let label = UILabel()
        label.font = Resources.fonts.interLight(size: 16)
        
        
        return label
    }()
    
    let mainView = UIView()
    
//    var titles:[String] = ["title","amount","transaction type","Tag","When","Note","Created at"]
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(mainView)
        mainView.addSubview(title)
        mainView.addSubview(value)
        selectionStyle = .none 
        mainView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.height.equalTo(100)
            make.width.equalToSuperview()
        }
       
        
        title.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalToSuperview().offset(20)
        }
        
        value.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.bottom.equalToSuperview().offset(-20)
        }
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
