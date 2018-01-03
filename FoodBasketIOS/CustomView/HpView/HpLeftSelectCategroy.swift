//
//  HpLeftSelectCategroy.swift
//  FoodBasketIOS
//
//  Created by xyy on 2018/1/3.
//  Copyright © 2018年 谢毅. All rights reserved.
//

import Foundation
import UIKit

class HpLeftSelectCategroy: UIView,UITableViewDelegate,UITableViewDataSource {
    
    
    
    var tableview:UITableView!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        tableview = UITableView.init(frame:self.bounds, style: UITableViewStyle.plain)
        tableview.backgroundColor = kCOLORNOW(a: 235, b: 235, c: 235)
        tableview.delegate = self
        tableview.dataSource = self
        self.addSubview(tableview)
    }
    
    //MARK: - tabview 代理
    func numberOfSections(in tableView: UITableView) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
    
}
