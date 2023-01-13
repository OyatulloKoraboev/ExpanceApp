//
//  IncomesViewController.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 14/01/23.
//

import UIKit

class IncomeViewController: UIViewController {
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.setTitle("Dismiss", for: .normal)
        button.addTarget(self, action: #selector(back), for: .touchUpInside)
        button.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
        }
        view.backgroundColor = .red
        
        // Do any additional setup after loading the view.
    }
    
    @objc func back(){
        dismiss(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
