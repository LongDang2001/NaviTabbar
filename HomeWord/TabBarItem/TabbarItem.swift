//
//  TabbarItem.swift
//  HomeWord
//
//  Created by LongDN on 02/06/2021.
//

import UIKit

enum TabItem: String, CaseIterable {
    case call = "call"
    case voif = "Void"
    case exit = "Exit"
    
    
    var viewController :UIViewController {
        switch self {
        case .call:
            return SecondViewController()
        case .voif:
            return ViewController()
            
        case .exit:
            return SecondTabViewController()
        default:
            return UIViewController()
        }
    }
    
    
    
//    var icon: UIImage {
//        switch self {
//        case .call:
//            return UIImage(named: "")!
//        case .voif:
//            return UIImage(named: "")!
//        case .exit:
//            return UIImage(named: "")!
//        default:
//            <#code#>
//        }
//    }
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            guard let windowScene = (scene as? UIWindowScene) else { return }
            let window = UIWindow(windowScene: windowScene)
            
            
        }
    
}


