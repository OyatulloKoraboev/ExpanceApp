//
//  Resources.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 28/12/22.
//

import Foundation
import UIKit
enum Resources{
    enum images{
        static let upIcon = UIImage(named: "up")
        static let downIcon = UIImage(named: "down")
    }
    
    enum colors{
        static var inactive = UIColor(hexString: "#828282")
        static var active = UIColor(hexString: "#333333")
        static var background = UIColor(hexString: "#E5E5E5")
    }

    enum fonts{
        static func interRegular(size:CGFloat) -> UIFont{
            UIFont(name:"Inter-VariableFont_slnt,wght",size: size) ?? UIFont()
        }
        
        static func interLight(size:CGFloat) -> UIFont{
            UIFont(name:"Inter-Light",size: size) ?? UIFont()
        }
        
        static func interBold(size:CGFloat) -> UIFont{
            UIFont(name:"Inter-Bold",size: size) ?? UIFont()
        }
        
       
    }
    
    enum strings{
        
    }
}
