//
//  ViewController.swift
//  CollectionViewWithImage
//
//  Created by 권정근 on 2/26/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemMint
        
        // self.navigationItem.title = "Home"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Go", style: .plain, target: nil, action: nil)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(didTapButton))
        
        /*
         secondViewController에서는 타이틀을 크게 설정해놓았기 때문에
         HomeViewController에서는 처음에는 타이틀이 작았다가 secondViewController로 넘어가면 타이틀이 커졌다가.
         다시 HomwViewController로 돌아와도 타이틀이 큰 상태로 돌아오기 때문에 이를 방지하기 위해서 아래 코드 작성
         
         */
        self.navigationItem.largeTitleDisplayMode = .never
        
        self.setupNavImage()
    }
    
    // 네비게이션 타이틀 대신에 이미지 넣기
    private func setupNavImage() {
        let imageView = UIImageView(image: UIImage(named: "orange"))
        imageView.contentMode = .scaleAspectFit
        imageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 115).isActive = true
        self.navigationItem.titleView = imageView
    }
    
    @objc func didTapButton() {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }
}

