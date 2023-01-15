//
//  DetailViewController.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 12/01/23.
//

import UIKit
import SnapKit
class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    
    var transaction:[Transaction] = []
    var arrayTitle = ["Title","Amount","Transaction Type","Tag"]
    let navigationBar = DetailedNavigation(title: "Details", firstItem: Resources.images.arrow, secondItem: Resources.images.share, thirdItem: Resources.images.trash)
   
    let mytable = UITableView()
    let plus = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        view.addSubview(mytable)
        view.addSubview(navigationBar)
        
        mytable.delegate = self
        mytable.dataSource = self
        mytable.register(DetailTableViewCell.self, forCellReuseIdentifier: "cell")
        mytable.separatorStyle = .none
        mytable.showsVerticalScrollIndicator = false
        mytable.backgroundColor = .clear
        mytable.separatorStyle = .none
        
        mytable.snp.makeConstraints { make in
            make.top.equalTo(navigationBar.snp.bottom).offset(5)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }
        
        navigationBar.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(110)
        }
        
        
        navigationBar.firstItem.addTarget(self, action: #selector(back), for: .touchUpInside)
        plus.frame = CGRect(origin: CGPoint(x: 20,y: 736),size: CGSize(width:view.frame.size.width - 40, height: 49))
        plus.backgroundColor = Resources.colors.commonButton
        plus.layer.cornerRadius = 5
        plus.clipsToBounds = true
        plus.setTitle("Edit Transaction", for: .normal)
        
        view.addSubview(plus)
    
    }
    
    @objc func back() {
        dismiss(animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! DetailTableViewCell
        cell.title.text = arrayTitle[indexPath.row]
        cell.value.text = transaction[0].data[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80    }
    
    private func configure(){
        
    }
}
    
    

