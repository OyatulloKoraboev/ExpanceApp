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
        Transaction(title: "Cashback Offer", cashback: "+$30", type: "Entertaiment", date: "30/10/22", icon: "tv",transactionType: .income),
        Transaction(title: "Chessy Pizza", cashback: "-$30", type: "Transportation", date: "30/10/22", icon: "egg",transactionType: .outcome),
        Transaction(title: "Freelancing", cashback: "+$150", type: "Transportaion", date: "30/10/22", icon: "eight",transactionType: .income),
        Transaction(title: "Metro Railway", cashback: "-$230", type: "Transportaion", date: "30/10/22",
                    icon: "icon",transactionType: .outcome),
    ]
    
    let cardView = CardView(title: "total balance", cost: "$23,000",titleOffsetTop: 34,costOffsetTop: 16)
    let leftSubCard = SubCardView(title: "Total income", cost: "+$23,000", titleOffsetTop: 53, costOffsetTop: 12,iconView: Resources.images.downIcon)
    let rightSubCard = SubCardView(title: "Total Expance", cost: "-$23,000", titleOffsetTop: 53, costOffsetTop: 12,iconView: Resources.images.upIcon)
    let recentLabel = UILabel()
    
    let navigationView = NavigationView(title: "Dashboard", firstItem: Resources.images.chevron, secondItem: Resources.images.threedots, thirdItem: Resources.images.bulp)
    let myTableView = UITableView()
    let plusButton = UIButton()
    let chenronView = Menu(firstTitle: "Incomes", secondTitle: "Expances")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        configureTable()
        
        plusButton.frame = CGRect(origin: CGPoint(x: 322,y: 736),size: CGSize(width:52, height: 52))
        plusButton.backgroundColor = Resources.colors.commonButton
        plusButton.layer.cornerRadius = 0.5 * plusButton.bounds.size.width
        plusButton.clipsToBounds = true
        plusButton.setImage(Resources.images.plus, for: .normal)
        
        view.addSubview(plusButton)
        navigationView.firstItem.makeSystem(button: navigationView.firstItem)
        navigationView.firstItem.addTarget(self, action: #selector(cheronPressed), for: .touchUpInside)
        chenronView.firstItem.makeSystem(button: chenronView.firstItem)
        chenronView.secondItem.makeSystem(button: chenronView.secondItem)
        chenronView.firstItem.addTarget(self, action: #selector(goToIncome), for: .touchUpInside)
        chenronView.secondItem.addTarget(self, action: #selector(goToExpance), for: .touchUpInside)
        plusButton.addTarget(self, action: #selector(addExpance), for: .touchUpInside)
    }
    
    
    @objc func addExpance(){
        let vc = AddExpance()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
    @objc func goToIncome(){
        let vc = IncomeViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
    @objc func goToExpance(){
        let vc = ExpanceViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
    @objc func cheronPressed(){
        if chenronView.isHidden {
            chenronView.isHidden = false
        } else {
            chenronView.isHidden = true
        }
    }
    
    private func configureTable(){
        view.addSubview(myTableView)
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.showsVerticalScrollIndicator = false
        myTableView.backgroundColor = .clear
        myTableView.separatorStyle = .none
        myTableView.register(TransactionCellTableViewCell.self, forCellReuseIdentifier: "cell")
        myTableView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(recentLabel.snp.bottom).offset(20)
            make.bottom.equalTo(view).offset(20)
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TransactionCellTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! TransactionCellTableViewCell
        cell.backgroundColor = Resources.colors.background
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = DetailViewController()
        
        vc.transaction = [transactions[indexPath.row]]
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
        //
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transactions.count
    }
    
    
    private func configure(){
        view.backgroundColor = Resources.colors.background
        view.addSubview(cardView)
        view.addSubview(leftSubCard)
        view.addSubview(rightSubCard)
        view.addSubview(navigationView)
        view.addSubview(chenronView)
        
        
        recentLabel.text = "recent transactions".capitalized
        recentLabel.font = Resources.fonts.interBold(size: 16)
        view.addSubview(recentLabel)
        chenronView.isHidden = true
        chenronView.backgroundColor = .white
        chenronView.snp.makeConstraints{ make in
            make.width.equalTo(150)
            make.height.equalTo(100)
            make.left.equalToSuperview().offset(10)
            make.top.equalTo(navigationView.snp.bottom).offset(2)
        }
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








