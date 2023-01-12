//
//  Transaction Model.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 12/01/23.
//

import Foundation
import UIKit

class Transaction {
    var title:String
    var cashback:String
    var type:String
    var date:String
    var icon:UIImage
    
    init(title: String, cashback: String, type: String, date: String,icon:String) {
        self.title = title
        self.cashback = cashback
        self.type = type
        self.date = date
        self.icon = UIImage(named: icon) ?? UIImage()
    }
}
