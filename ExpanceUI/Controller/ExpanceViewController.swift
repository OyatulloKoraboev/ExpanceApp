//
//  ExpanceViewController.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 14/01/23.
//

import UIKit

class ExpanceViewController: UIViewController {

    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.setTitle("Dismiss", for: .normal)
        button.addTarget(self, action: #selector(back), for: .touchUpInside)
        button.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
        }
        view.backgroundColor = .systemCyan
        
        // Do any additional setup after loading the view.
    }
    
    @objc func back(){
        dismiss(animated: true)
    }

    

}
