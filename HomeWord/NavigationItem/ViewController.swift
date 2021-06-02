//
//  ViewController.swift
//  HomeWord
//
//  Created by LongDN on 01/06/2021.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {

    
    var secondVc = SecondViewController()
    let tabbarViewController = UITabBarController()
    let uibarbutton = UIBarButtonItem()
    let navigationItemsss = UINavigationItem()
    let navigationbar = UINavigationBar()
    
    
    var arrayLeftBarButtonItems: [UIBarButtonItem] = [
        UIBarButtonItem(image: UIImage(named: ""), style: .done, target: self, action: nil),
        UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: nil)

    ]
    
    //var arrayViewController: [UIViewController] = [SecondViewController(),  ViewController()]
    
    let rightButton = UIButton(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "ViewController"
        //self.navigationItem.backButtonTitle = "Seconview"
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(backBarButton))
        tabbarViewController.viewControllers = [secondVc]
        
        
        //self.navigationController?.viewControllers = arrayViewController
        
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "wafflewolfaa"), style: .plain, target: self, action: #selector(rightBarButton))
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(rightBarButton))
        
        
        rightButton.setImage(UIImage(named: "wafflewolfaa"), for: .normal)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightButton)
        
        rightButton.addTarget(self, action: #selector(rightBarButton), for: .touchUpInside)
        
        self.navigationItem.leftBarButtonItems = arrayLeftBarButtonItems
        
        self.setToolbarItems(arrayLeftBarButtonItems, animated: true) // test
        
        self.navigationController?.navigationBar.barTintColor = UIColor.yellow
        self.navigationController?.navigationBar.barStyle = UIBarStyle.default
        //self.navigationController?.navigationBar.items = ar
        
    }
    
    
    
    
    @objc func backBarButton() {
        let storybaordSecond =  storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(storybaordSecond, animated: true)
        print("backBarButton")
    }
    
    @objc func leafBarBtton() {
        print("leafBarBtton")
        let storybaordSecond =  storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(storybaordSecond, animated: true)
    }
    
    @objc func rightBarButton() {
        let storybaordSecond =  storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        print("rightBarButton")
        navigationController?.pushViewController(storybaordSecond, animated: true)
    }
    
    
    // MARK: UINavigationControllerDelegate
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        print("navigationController")
        // các ham nay sẽ gọi khi có sự kiện gì:
    }
    
    
    
    


}

