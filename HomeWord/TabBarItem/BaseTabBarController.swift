//
//  BaseTabBarController.swift
//  HomeWord
//
//  Created by LongDN on 02/06/2021.
//

import UIKit

class BaseTabBarController: UITabBarController {

    
    let tabbaraaa = UITabBar()
    let tabbarItemss = UITabBarItem()
    let tabbarviewcontroller = UITabBarController()
    
    var arrayTabBarItem: [UITabBarItem] = [
        
        UITabBarItem(title: "Sell", image: UIImage(named: ""), tag: 1),
        UITabBarItem(title: "Edit", image: UIImage(named: ""), tag: 2),
        UITabBarItem(title: "Bount", image: UIImage(named: ""), tag: 3)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTabBar()
        
        
    }
    
    func loadTabBar() {
        self.tabBar.barTintColor = UIColor.yellow
        self.tabBar.tintColor = UIColor.cyan
        
        self.tabBar.barStyle = UIBarStyle(rawValue: 1)!
        self.tabBar.itemSpacing = 5
        //self.tabBar.setItems(arrayTabBarItem, animated: true)
        self.tabBar.items = arrayTabBarItem
        
        
//        self.tabBarController?.viewControllers = [
//            SecondViewController(),
//            ViewController(),
//            FirstTabViewController()
//        ]
        
        
    }
    
    func selectedItem(index: Int) {
        self.selectedIndex = index
        
    }
    
}
