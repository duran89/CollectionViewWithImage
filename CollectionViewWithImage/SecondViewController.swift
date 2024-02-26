//
//  SecondViewController.swift
//  CollectionViewWithImage
//
//  Created by 권정근 on 2/26/24.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemCyan
        self.navigationItem.title = "Second Controller"
        
        
        // 타이틀 크게 (secondViewController에만 적용했지만, HomeViewController에도 적용됨)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
    }
}
