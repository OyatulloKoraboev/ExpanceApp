//
//  ViewController.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 14/01/23.
//

import UIKit
import SnapKit
class AddExpance: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    let navigation = DetailedNavigation(title: "Add ", firstItem: Resources.images.arrow, secondItem: Resources.images.trash, thirdItem: Resources.images.share)
    let mytable = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(navigation)
        view.addSubview(mytable)
        mytable.delegate = self
        mytable.dataSource = self
        mytable.register(AddTableViewCell.self, forCellReuseIdentifier: "cell")
        mytable.separatorStyle = .none
        mytable.snp.makeConstraints { make in
            make.top.equalTo(navigation.snp.bottom).offset(5)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }
        
        navigation.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(110)
        }

        navigation.firstItem.addTarget(self, action: #selector(back), for: .touchUpInside)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AddTableViewCell
        cell.textField.placeholder = "Title"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    @objc func back(){
        dismiss(animated: true)
    }

}
