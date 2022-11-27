//
//  TabBarController.swift
//  Navigation
//
//  Created by Кирилл Грецкий on 27.11.2022.
//

import UIKit

class TabBarController : UITabBarController {
    var firstTabBar : UINavigationController!
    var secondTabBar : UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        firstTabBar = UINavigationController.init(rootViewController: FeedViewController())
        secondTabBar = UINavigationController.init(rootViewController: ProfileViewController())
        
        self.viewControllers = [firstTabBar, secondTabBar]
        
        let item1 = UITabBarItem(title: "Feed", image: UIImage(systemName: "square.3.stack.3d.top.fill"), tag: 0)
        let item2 = UITabBarItem(title: "Profile", image: UIImage(systemName: "brain.head.profile"), tag: 1)
        
        firstTabBar.tabBarItem = item1
        secondTabBar.tabBarItem = item2
        
        UITabBar.appearance().tintColor = UIColor(red: 0/255.0, green: 146/255.0, blue: 248/255.0, alpha: 1.0)
        UITabBar.appearance().backgroundColor = .gray
    }
}
