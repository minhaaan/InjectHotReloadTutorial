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
        label.text = "1232"
        label.font = .boldSystemFont(ofSize: 20)
        return label
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
    }


}

