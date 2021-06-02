//
//  FirstTabViewController.swift
//  HomeWord
//
//  Created by LongDN on 01/06/2021.
//

import UIKit

class FirstTabViewController: UIViewController {

    
    var arrayTabBarItem: [UITabBarItem] = [
        
        UITabBarItem(title: "Sell", image: UIImage(named: ""), tag: 1),
        UITabBarItem(title: "Edit", image: UIImage(named: ""), tag: 2),
        UITabBarItem(title: "Bount", image: UIImage(named: ""), tag: 3)
    ]
    
    let tabBarView = UITabBarController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarItem.title = "Tab View"
        
        
        //tabBarView.viewControllers = [secon]
        
        
    }
    

}
