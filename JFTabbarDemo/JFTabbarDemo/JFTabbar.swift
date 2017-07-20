//
//  JFTabbar.swift
//  JFTabbarDemo
//
//  Created by 张炯枫 on 2017/7/19.
//  Copyright © 2017年 Zehuihong. All rights reserved.
//

import UIKit

class JFTabbar: UITabBar {
    
    var selectBtn:JFTabbarButton?
    var selectedClosure:((_ index:Int) -> Void)?
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let count = 5
        var btnIndex = 0
        print(self.subviews)

        for (index, btn) in self.subviews.enumerated() {
            if ((btn as? JFTabbarButton) != nil){
                btn.tag = btnIndex
                let x:CGFloat = CGFloat(btnIndex * Int(self.bounds.width) / count)
                let y:CGFloat = 0
                let width:CGFloat = CGFloat(Int(self.bounds.width) / count)
                let height:CGFloat = self.bounds.height
                
                btn.frame = CGRect(x: x, y: y, width: width, height: height)
                btnIndex = btnIndex + 1

            }
       }
    }
    
    func addbutton(image:UIImage, selectedImage:UIImage, name:String?) {
        let btn = JFTabbarButton(type: .custom)
        btn.setImage(image, for: .normal)
        btn.setImage(selectedImage, for: .selected)
        
        self.addSubview(btn)
        
        btn.addTarget(self, action: #selector(self.clickBtn(btn:)), for: .touchUpInside)
        btn.setTitle(name, for: .normal)
        btn.setTitleColor(UIColor(red: 86/255.0, green: 86/255.0, blue: 86/255.0, alpha: 1), for: .normal)
        if(self.subviews.count == 1){
            clickBtn(btn: btn)
        }
    }

    func clickBtn(btn:UIButton) {
        selectBtn?.isSelected = false
        btn.isSelected = true
        selectBtn = btn as? JFTabbarButton
        
        selectedClosure?(btn.tag)
    }
}
