//
//  ViewController.swift
//  InjectHotReloadTutorial
//
//  Created by 최민한 on 2022/05/10.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "123211"
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var bt: UIButton = {
        let bt = UIButton()
        bt.setTitle("secondVC", for: .normal)
        bt.addTarget(self, action: #selector(tap), for: .touchUpInside)
        return bt
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(100)
        }
        
        view.backgroundColor = .systemBlue
        
        view.addSubview(bt)
        bt.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(-50)
            make.centerX.equalToSuperview()
        }
    }

    @objc func tap() {
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .fullScreen
        self.present(secondVC, animated: true)
    }

}

