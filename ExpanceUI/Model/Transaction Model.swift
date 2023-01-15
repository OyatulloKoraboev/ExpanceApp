//
//  Transaction Model.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 12/01/23.
//

import Foundation
import UIKit

enum TransactionType {
    case income
    case outcome
}
struct Transaction {
    var title:String
    var cashback:String
    var type:String
    var date:String
    var icon:UIImage
    var transactionType:TransactionType
    var data:[String]
    
    init(title: String, cashback: String, type: String, date: String,icon:String,transactionType:TransactionType = .income,data:[String]=["Hello","hi","hi","hi"]) {
        self.title = title
        self.data = data
        self.cashback = cashback
        self.type = type
        self.date = date
        self.icon = UIImage(named: icon) ?? UIImage()
        self.transactionType = transactionType
    }
}
