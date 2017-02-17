//
//  ViewController.swift
//  JubaozhuSwift
//
//  Created by 艾晶 on 2017/2/16.
//  Copyright © 2017年 艾晶. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.red;
        
        self.createUI()
        
        
    }
    
    func createUI() {
        
        let logoView = UIImageView(image: UIImage(named: "Logo"))
        logoView.translatesAutoresizingMaskIntoConstraints = true
        logoView.contentMode = UIViewContentMode.scaleAspectFill
        self.view.addSubview(logoView)
        
        logoView.frame = CGRect(x: (self.view.bounds.size.width - 150 ) / 2.0 , y: 100, width: 150, height: 150)

        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

