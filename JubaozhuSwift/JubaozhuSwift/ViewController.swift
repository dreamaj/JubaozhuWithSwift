//
//  ViewController.swift
//  JubaozhuSwift
//
//  Created by 艾晶 on 2017/2/16.
//  Copyright © 2017年 艾晶. All rights reserved.
//

import UIKit



class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black;
        
        self.createUI()
        
        
    }
    
    func createUI() {
        
        let logoView = UIImageView(image: UIImage(named: "Logo"))
        logoView.translatesAutoresizingMaskIntoConstraints = true
        logoView.contentMode = UIViewContentMode.scaleAspectFill
        self.view.addSubview(logoView)
        
        logoView.frame = CGRect(x: (self.view.bounds.size.width - 150 ) / 2.0 , y: 100, width: 150, height: 150)

        let photoBtn = UIButton()
        photoBtn.layer.masksToBounds = true
        photoBtn.layer.borderColor = UIColor.white.cgColor
        photoBtn.layer.borderWidth = 1.0
        photoBtn.setTitle("相 册", for: .normal)
        photoBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20);
        photoBtn.addTarget(self, action: #selector(photoBtnClick), for: .touchUpInside)
        self.view.addSubview(photoBtn)
        photoBtn.frame = CGRect(x: (self.view.bounds.size.width - 120) / 2.0, y: logoView.frame.maxY + 150, width: self.view.bounds.size.width - 240, height: self.view.bounds.size.width - 240)
     
    }
    
    func photoBtnClick() {
        let imagePickerVC = NoizzViewController()
        imagePickerVC.sourceType = .photoLibrary
        imagePickerVC.delegate = self
        imagePickerVC.navigationBar.backgroundColor = UIColor.black
        self.present(imagePickerVC, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let imageEditVC = ImageEditViewController()
        imageEditVC.photoImg = info[UIImagePickerControllerOriginalImage] as! UIImage
        picker.pushViewController(imageEditVC, animated: true)
        
        
        
        
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


































