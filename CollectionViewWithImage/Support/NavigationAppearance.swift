//
//  NavigationAppearance.swift
//  CollectionViewWithImage
//
//  Created by 권정근 on 2/26/24.
//

import UIKit


extension UINavigationController {
    
    func setupNavBarColor() {
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        appearance.backgroundColor = .systemGray
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        self.navigationBar.standardAppearance = appearance
        self.navigationBar.scrollEdgeAppearance = appearance
        self.navigationBar.compactAppearance = appearance
        
        // 왼쪽, 오른쪽 버튼의 텍스트 또는 그림의 색상 설정 둘다
        // 둘다 설정하면 아래꺼만 먼저 동작된다.
        self.navigationBar.tintColor = .white
        UIBarButtonItem.appearance().tintColor = .black
    }
}
