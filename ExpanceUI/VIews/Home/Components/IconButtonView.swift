//
//  IconButtonView.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 07/01/23.
//

import UIKit

class IconButtonView: UIButton {

    private let iconView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(image:UIImage) {
        super.init(frame: .zero)
        iconView.image = image
        setImage(iconView.image, for: .normal)
        makeSystem(button: self)
    }
    
}
