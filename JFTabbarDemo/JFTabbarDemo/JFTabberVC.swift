//
//  JFTabberVC.swift
//  JFTabbarDemo
//
//  Created by 张炯枫 on 2017/7/19.
//  Copyright © 2017年 Zehuihong. All rights reserved.
//

import UIKit

class JFTabberVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = self.tabBar.frame
        self.tabBar.removeFromSuperview()

        let tabbarView = JFTabbar(frame: rect)
        tabbarView.backgroundColor = UIColor.red
        tabbarView.selectedClosure = { index in
            self.selectedIndex = index
        }
        self.view.addSubview(tabbarView)
        
        let normalImages = ["tabbar_data_normal","tabbar_dealer_normal","tabbar_scan","tabbar_inventory_normal","tabbar_me_normal"]
        let selectImages = ["tabbar_data_selected","tabbar_dealer_selected","tabbar_scan","tabbar_inventory_selected","tabbar_me_selected"]
        
        for index in 0...4 {
            let image = UIImage(named: normalImages[index])
            let selectImage = UIImage(named: selectImages[index])
            if index == 2 {
                tabbarView.addbutton(image: image!, selectedImage: selectImage!, name: "")
            }
            else{
                tabbarView.addbutton(image: image!, selectedImage: selectImage!, name: "测试")
            }
            print(index)    
        }
        
        let vc = ViewController()
        let nav = UINavigationController(rootViewController:vc)
        self.addChildViewController(nav)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




}
