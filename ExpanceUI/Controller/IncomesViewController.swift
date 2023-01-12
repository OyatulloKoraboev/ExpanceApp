//
//  IncomesViewController.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 07/01/23.
//

import UIKit
import SnapKit

class IncomesViewController: UIViewController {
    private let navigatinView = NavigationView(title: "All Incomes", firstItem: Resources.images.chevron, secondItem: Resources.images.threedots, thirdItem:    Resources.images.bulp)
    private let cardView = CardView(title: "total balance", cost: "$23,000",titleOffsetTop: 34,costOffsetTop: 16)
    private let incomeTransactions = TransactionView()
    
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let recentLabel:UILabel = {
        let label = UILabel()
        label.text = "All Incomes"
        label.font = Resources.fonts.interBold(size: 16)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Resources.colors.background
        view.addSubview(navigatinView)
        view.addSubview(cardView)
        view.addSubview(recentLabel)
        
//        view.addSubview(incomeTransactions)
//        view.addSubview(outcomeTransactions)
        
        view.addSubview(scrollView)
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 600)
        scrollView.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(view.snp.width)
            make.top.equalTo(recentLabel.snp.bottom).offset(20)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-20)
        }
        scrollView.addSubview(contentView)
        
        
        contentView.snp.makeConstraints { make in
            make.centerX.equalTo(scrollView.snp.centerX)
            make.width.equalTo(scrollView.snp.width)
            make.height.equalTo(scrollView.snp.height)
        }
        
        navigatinView.snp.makeConstraints { make in
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
        recentLabel.snp.makeConstraints { make in
            make.top.equalTo(cardView.snp.bottom).offset(25)
            make.left.equalToSuperview().offset(20)
        }
        contentView.addSubview(incomeTransactions)
        incomeTransactions.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(contentView.snp.top).offset(10)
            make.height.equalTo(100)
        }
        
    }
}
