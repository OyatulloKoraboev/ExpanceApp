//
//  DetailTableViewCell.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 12/01/23.
//

import UIKit
import SnapKit

class DetailTableViewCell: UITableViewCell {
    var title = UILabel()
    
    
    var titles:[String] = ["title","amount","transaction type","Tag","When","Note","Created at"]
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(title)
        
        
        title.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(20)
        }
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
