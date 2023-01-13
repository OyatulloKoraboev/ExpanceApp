//
//  DetailViewController.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 12/01/23.
//

import UIKit
import SnapKit
class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var transaction:[Transaction] = []
    var titles:[String] = ["title","amount","transaction type","Tag","When","Note","Created at"]
    let navigationBar = DetailedNavigation(title: "Details", firstItem: Resources.images.arrow, secondItem: Resources.images.share, thirdItem: Resources.images.trash)
    
    private let myTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(navigationBar)
        view.addSubview(myTableView)
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        myTableView.register(DetailTableViewCell.self, forCellReuseIdentifier: "cell")
        configure()
        navigationBar.firstItem.addTarget(self, action: #selector(back), for: .touchUpInside)
        
    }
    @objc func back() {
        dismiss(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:DetailTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DetailTableViewCell
        cell.title.text = "Hello World"
        
        return cell
    }
    
    
    private func configure(){

        navigationBar.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(100)
        }
        
        myTableView.snp.makeConstraints { make in
            make.top.equalTo(navigationBar.snp.bottom).offset(30)
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
}
    
    

