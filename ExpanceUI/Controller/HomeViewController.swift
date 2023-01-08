//
//  ViewController.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 28/12/22.
//

import UIKit
import SnapKit
class HomeViewController: UIViewController {
    let cardView = CardView(title: "total balance", cost: "$23,000",titleOffsetTop: 34,costOffsetTop: 16)
    let leftSubCard = SubCardView(title: "Total income", cost: "+$23,000", titleOffsetTop: 53, costOffsetTop: 12,iconView: Resources.images.downIcon)
    let rightSubCard = SubCardView(title: "Total Expance", cost: "-$23,000", titleOffsetTop: 53, costOffsetTop: 12,iconView: Resources.images.upIcon)
    let recentLabel = UILabel()
    let transactions = TransactionView()
    
    let navigationView = NavigationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure(){
        view.backgroundColor = Resources.colors.background
        view.addSubview(cardView)
        view.addSubview(leftSubCard)
        view.addSubview(rightSubCard)
        view.addSubview(navigationView)
        view.addSubview(transactions)
        
        recentLabel.text = "recent transactions".capitalized
        recentLabel.font = Resources.fonts.interBold(size: 16)
        view.addSubview(recentLabel)

        navigationView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalTo(cardView.snp.top).offset(-12)
        }
        cardView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(120)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(120)
        }
        leftSubCard.snp.makeConstraints { make in
            make.top.equalTo(cardView.snp.bottom).offset(12)
            make.left.equalToSuperview().offset(20)
            make.right.equalTo(view.snp.centerX).offset(-6)
            make.height.equalTo(120)
        }
        
        rightSubCard.snp.makeConstraints { make in
            make.top.equalTo(cardView.snp.bottom).offset(12)
            make.right.equalToSuperview().offset(-20)
            make.left.equalTo(view.snp.centerX).offset(6)
            make.height.equalTo(120)
        }
        
        recentLabel.snp.makeConstraints { make in
            make.top.equalTo(rightSubCard.snp.bottom).offset(25)
            make.left.equalToSuperview().offset(20)
        }
        transactions.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(recentLabel.snp.bottom).offset(25)
            make.height.equalTo(100)
            
        }
    }
}








