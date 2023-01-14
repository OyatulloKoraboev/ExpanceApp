//
//  ExpanceViewController.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 14/01/23.
//

import UIKit
import SnapKit
class ExpanceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var transactions = [
        Transaction(title: "Cashback Offer", cashback: "+$30", type: "Entertaiment", date: "30/10/22", icon: "tv",transactionType: .income),
        Transaction(title: "Chessy Pizza", cashback: "-$30", type: "Transportation", date: "30/10/22", icon: "egg",transactionType: .outcome),
        Transaction(title: "Freelancing", cashback: "+$150", type: "Transportaion", date: "30/10/22", icon: "eight",transactionType: .income),
        Transaction(title: "Metro Railway", cashback: "-$230", type: "Transportaion", date: "30/10/22",
                    icon: "icon",transactionType: .outcome),
    ]
    let navigation = NavigationView(title: "Expance", firstItem: Resources.images.chevron, secondItem: Resources.images.bulp, thirdItem: Resources.images.threedots)
    let cardView = CardView(title: "Total Expance", cost: "$23,000", titleOffsetTop: 34, costOffsetTop: 16)
    let recentLabel:UILabel = {
        let label = UILabel()
        label.text = "All Expances"
        label.font = Resources.fonts.interBold(size: 16)
        return label
    }()
    let scrollView = UIScrollView()
    let myTableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        view.backgroundColor = Resources.colors.background
        
        
        configure()
        configureTable()
    }
    
    @objc func goToHome(){
        let vc = HomeViewController()
        present(vc, animated: true)
        modalPresentationStyle = .fullScreen
    }
    
    private func configureTable(){
        view.addSubview(myTableView)
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(TransactionCellTableViewCell.self, forCellReuseIdentifier: "cell")
        myTableView.backgroundColor = Resources.colors.background
        myTableView.showsVerticalScrollIndicator = false
        myTableView.separatorStyle = .none
        myTableView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(recentLabel.snp.bottom).offset(20)
            make.bottom.equalTo(view).offset(20)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var number:Int = 0
        for i in transactions {
            if i.transactionType == .outcome{
                number += 1
            }
        }
        return number
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TransactionCellTableViewCell
        
        cell.titleLabel.text = transactions[indexPath.row].title
        cell.cashbackLabel.text = transactions[indexPath.row].cashback
        cell.cashbackLabel.textColor = transactions[indexPath.row].transactionType == .income ? Resources.colors.up : Resources.colors.down
        cell.typeLabel.text = transactions[indexPath.row].type
        cell.dateLabel.text = transactions[indexPath.row].date
        cell.iconView.image = transactions[indexPath.row].icon
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    private func configure(){
        view.addSubview(navigation)
        view.addSubview(cardView)
        view.addSubview(recentLabel)
        view.addSubview(scrollView)
        
        
        navigation.snp.makeConstraints { make in
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
        
        
    }

    

}
