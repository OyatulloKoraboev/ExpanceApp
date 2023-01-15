//
//  ViewController.swift
//  ExpanceUI
//
//  Created by Oyatullo Koraboev on 14/01/23.
//

import UIKit

class AddExpance: UIViewController {
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        


    }
    override func viewDidLayoutSubviews() {
        let scrollView = UIScrollView(frame: CGRect(x: 10, y: 10, width: view.frame.size.width - 20, height: view.frame.size.height - 20 ))
        scrollView.backgroundColor = .green
        view.addSubview(scrollView)
        
        let button = UIButton(frame: CGRect(x: 20, y: 100, width: 100, height: 60))
        button.backgroundColor = .systemBlue
        scrollView.addSubview(button)
        
        let buttontwo = UIButton(frame: CGRect(x: 200, y: 900, width: 100, height: 60))
        buttontwo.backgroundColor = .red
        scrollView.addSubview(buttontwo)
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 900)
    }

    
    @objc func back(){
        dismiss(animated: true)
    }

}
