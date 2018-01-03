//
//  HomePageController.swift
//  FoodBasketIOS
//
//  Created by xyy on 2017/12/13.
//  Copyright © 2017年 谢毅. All rights reserved.
//

import Foundation
import UIKit

class HomePageController:UIViewController
{
    override func viewDidLoad()
    {
        self.title = "首页";
        
        let buttonleft = UIButton.init(type: UIButtonType.custom)
        buttonleft.frame = CGRect.init(x: 0, y: kStatuBarHeight+2, width: 40, height: 40)
        buttonleft.setImage(kLOADIMAGE(imageName: "搜索", PicType: "png").withRenderingMode(.automatic), for: UIControlState.normal)
        let barButtonItemleft = UIBarButtonItem(customView: buttonleft)
        self.navigationItem.leftBarButtonItem = barButtonItemleft
        
        let rightbaritem = UIBarButtonItem.init(image: kLOADIMAGE(imageName: "消息", PicType: "png").withRenderingMode(.alwaysOriginal), style: UIBarButtonItemStyle.plain, target: self, action: #selector(gotosearch))
        self.navigationItem.rightBarButtonItem = rightbaritem
        
        initview();
    }
    
    func initview(){
        let viewtop = HpTopSelectItemView.init(frame: CGRect.init(x: 0, y: kStatusBarAndNavigationHeight, width: kSCREEN_WIDTH, height: 60))
        self.view.addSubview(viewtop)
    }
    
    override func didReceiveMemoryWarning()
    {
        
    }
    
    @objc func gotosearch(btn:UIBarButtonItem)
    {
        print("print");
    }
}
