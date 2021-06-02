//
//  SecondViewController.swift
//  HomeWord
//
//  Created by LongDN on 01/06/2021.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        self.navigationItem.title = "SecondView"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: nil)
        
        
    }
    
    
 

}
