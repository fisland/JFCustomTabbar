//
//  JFTabbarButton.swift
//  JFTabbarDemo
//
//  Created by 张炯枫 on 2017/7/19.
//  Copyright © 2017年 Zehuihong. All rights reserved.
//

import UIKit

class JFTabbarButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.titleLabel?.font = UIFont.systemFont(ofSize: 12.0)
        self.titleLabel?.textAlignment = .center
        
        let imgViewSize = self.imageView?.bounds.size;
        let titleSize = self.titleLabel?.bounds.size;
        let btnSize = self.bounds.size;
        let heightSpace:CGFloat = 5.0
        
        self.contentHorizontalAlignment = .center

        
        
        
        if self.titleLabel?.text == "" || self.titleLabel?.text == nil {
            self.imageEdgeInsets = UIEdgeInsets(top: -30.0, left: 0.0, bottom: btnSize.height - (imgViewSize?.height)! - heightSpace, right: -(titleSize?.width)!)

            self.titleEdgeInsets = UIEdgeInsets(top: (imgViewSize?.height)!+heightSpace, left: -(imgViewSize?.width)!, bottom: 0.0, right: 0.0)

        }
        else{
            self.imageEdgeInsets = UIEdgeInsets(top: heightSpace, left: 0.0, bottom: btnSize.height - (imgViewSize?.height)! - heightSpace, right: -(titleSize?.width)!)
            
            self.titleEdgeInsets = UIEdgeInsets(top: (imgViewSize?.height)!+heightSpace, left: -(imgViewSize?.width)!, bottom: 0.0, right: 0.0)
        }
    }

}
