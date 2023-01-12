//
//  ViewController.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 28/12/22.
//

import UIKit
import SnapKit
class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let transactions = [
        Transaction(title: "Cashback Offer", cashback: "+$30", type: "Entertaiment", date: "30/10/22", icon: "tv"),
        Transaction(title: "Chessy Pizza", cashback: "-$30", type: "Transportation", date: "30/10/22", icon: "egg"),
        Transaction(title: "Freelancing", cashback: "+$150", type: "Transportaion", date: "30/10/22", icon: "eight"),
        Transaction(title: "Metro Railway", cashback: "-$230", type: "Transportaion", date: "30/10/22",
            icon: "icon"),
        
    ]
    let cardView = CardView(title: "total balance", cost: "$23,000",titleOffsetTop: 34,costOffsetTop: 16)
    let leftSubCard = SubCardView(title: "Total income", cost: "+$23,000", titleOffsetTop: 53, costOffsetTop: 12,iconView: Resources.images.downIcon)
    let rightSubCard = SubCardView(title: "Total Expance", cost: "-$23,000", titleOffsetTop: 53, costOffsetTop: 12,iconView: Resources.images.upIcon)
    let recentLabel = UILabel()
    
    let navigationView = NavigationView(title: "Dashboard", firstItem: Resources.images.chevron, secondItem: Resources.images.threedots, thirdItem: Resources.images.bulp)
    let myTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        configureTable()
    }
    
    private func configureTable(){
        view.addSubview(myTableView)
        myTableView.delegate = self
        myTableView.dataSource = self
        
        myTableView.separatorStyle = .none
        myTableView.register(TransactionCellTableViewCell.self, forCellReuseIdentifier: "cell")
        myTableView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(recentLabel.snp.bottom).offset(20)
            make.bottom.equalTo(view).offset(20)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transactions.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TransactionCellTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! TransactionCellTableViewCell
        cell.backgroundColor = Resources.colors.background
        cell.titleLabel.text = transactions[indexPath.row].title
        cell.cashbackLabel.text = transactions[indexPath.row].cashback
        cell.typeLabel.text = transactions[indexPath.row].type
        cell.dateLabel.text = transactions[indexPath.row].date
        cell.iconView.image = transactions[indexPath.row].icon
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
    private func configure(){
        view.backgroundColor = Resources.colors.background
        view.addSubview(cardView)
        view.addSubview(leftSubCard)
        view.addSubview(rightSubCard)
        view.addSubview(navigationView)
        
        
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
        
        
        
    }
}








