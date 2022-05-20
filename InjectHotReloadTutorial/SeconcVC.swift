//
//  SeconcVC.swift
//  InjectHotReloadTutorial
//
//  Created by 최민한 on 2022/05/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    lazy var bt: UIButton = {
        let bt = UIButton()
        bt.setTitle("return", for: .normal)
        bt.addTarget(self, action: #selector(tap), for: .touchUpInside)
        return bt
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        view.addSubview(bt)
        bt.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(-50)
            make.centerX.equalToSuperview()
        }
    }
    
    @objc func tap() {
        self.dismiss(animated: true)
    }
    
}
