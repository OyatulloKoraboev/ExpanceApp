//
//  CurrencyListViewController.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 17/01/23.
//

import UIKit
import SnapKit

let currency = [
    Currency(country: "Euro", flag: "🇪🇺", code: "EUR"),
    Currency(country: "US Dollar", flag: "🇺🇸", code: "USD"),
    Currency(country: "Canadian Dollar", flag: "🇨🇦", code: "CAD",check:true),
    Currency(country: "Australian Dollar", flag: "🇦🇺", code: "AUD"),
    Currency(country: "Swiss Franc", flag: "🇨🇭", code: "CHF"),
    Currency(country: "Mexicon Peso", flag: "🇲🇽", code: "MXN"),
    Currency(country: "Russian Ruble", flag: "🇷🇺", code: "RUB"),
    Currency(country: "Indian Rupe", flag: "🇮🇳", code: "INR"),
    Currency(country: "Brazilian Real", flag: "🇧🇷", code: "BRL"),
]

class CurrencyListViewController: UIViewController {
    let navigation = DetailedNavigation(title: "Currency", firstItem: Resources.images.arrow,secondItem: Resources.images.bulp,thirdItem: Resources.images.arrow)
    let mytable = UITableView()
    let plusButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configure()
        tableConfig()
        
        view.addSubview(plusButton)
        plusButton.frame = CGRect(origin: CGPoint(x: 250,y: 750),size: CGSize(width:100, height: 52))
        plusButton.backgroundColor = Resources.colors.commonButton
        plusButton.layer.cornerRadius = 25
        plusButton.clipsToBounds = true
        plusButton.setImage(Resources.images.checkmark, for: .normal)
        plusButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0);
        plusButton.setTitle("Save", for: .normal)
    }
    
    func tableConfig() {
        view.addSubview(mytable)
        mytable.delegate = self
        mytable.dataSource = self
        mytable.register(CurrencyTableViewCell.self, forCellReuseIdentifier: "cell")
        mytable.separatorStyle = .none
        mytable.alwaysBounceVertical = false


        mytable.snp.makeConstraints { make in
            make.top.equalTo(navigation.snp.bottom)
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    private func configure(){
        view.addSubview(navigation)
        navigation.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(120)
        }
     
    }
}

extension CurrencyListViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currency.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CurrencyTableViewCell
        cell.flagLabel.text = currency[indexPath.row].flag
        cell.codeLabel.text = currency[indexPath.row].code
        cell.countryLabel.text = currency[indexPath.row].country
        if !currency[indexPath.row].check{
            cell.check.isHidden = true
        }
        return cell
    }
    
}
