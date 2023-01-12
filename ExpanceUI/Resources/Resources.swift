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
        static let upIcon = UIImage(named: "up") ?? UIImage()
        static let downIcon = UIImage(named: "down") ?? UIImage()
        static let bulp = UIImage(named: "bulp") ?? UIImage()
        static let chevron = UIImage(named: "chevron") ?? UIImage()
        static let threedots = UIImage(named: "threeDots") ?? UIImage()
        
        static let tv = UIImage(named: "tv") ?? UIImage()
        static let plus = UIImage(named: "plus") ?? UIImage()
        
    }
    
    enum colors{
        static var inactive = UIColor(hexString: "#828282")
        static var active = UIColor(hexString: "#333333")
        static var background = UIColor(hexString: "#E5E5E5")
        static var up = UIColor(hexString: "#6FCF97")
        static var down = UIColor(hexString: "#EB5757")
        static var transactionCard = UIColor(hexString: "#F9F9F9")
        static var commonButton = UIColor(hexString: "#006AF6")
        
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
