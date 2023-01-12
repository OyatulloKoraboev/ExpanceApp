//
//  DetailViewController.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 12/01/23.
//

import UIKit
import SnapKit
class DetailViewController: UIViewController {
    private let dismisButton:UIButton = {
        let button = UIButton()
        button.setTitle("Dismiss", for: .normal)
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(backButton), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBlue
        
        view.addSubview(dismisButton)
        dismisButton.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.width.equalTo(120)
            make.centerY.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
    
    @objc func backButton() {
        dismiss(animated: true)
    }
}
