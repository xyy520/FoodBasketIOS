//
//  Header.swift
//  FoodBasketIOS
//
//  Created by xyy on 2018/1/2.
//  Copyright © 2018年 谢毅. All rights reserved.
//

import UIKit
import AVFoundation

let kDOCUMENTS_FOLDER=NSHomeDirectory()+"Documents"
let kTmp_path = NSHomeDirectory()+"tmp/videos"
let kCache_path = NSHomeDirectory()+"Library/Caches"

let kSCREEN_WIDTH = (UIScreen.main.bounds.size.width)
let kSCREEN_HEIGHT = (UIScreen.main.bounds.size.height)

//获取app版本号
let kinfoDic = Bundle.main.infoDictionary
let kappVersion = kinfoDic?["CFBundleShortVersionString"]
let kappBuildVersion = kinfoDic?["CFBundleVersion"]
let kappName = kinfoDic?["CFBundleDisplayName"]

let kNavigationHeight :CGFloat = UINavigationBar.appearance().frame.size.height
let kStatuBarHeight   :CGFloat = UIApplication.shared.statusBarFrame.size.height

let kStatusBarAndNavigationHeight :CGFloat = kStatuBarHeight+44;


//屏幕分辨率比例
let screenScale:CGFloat = UIScreen.main.responds(to: #selector(getter: UIScreen.main.scale)) ? UIScreen.main.scale : 1.0

//不同屏幕尺寸字体适配（375，667是因为目前苹果开发一般用IPHONE6做中间层 如果不是则根据实际情况修改）
//相对于iPhone6的宽度比例
let kscreenWidthRatio:CGFloat =  kSCREEN_WIDTH / 375;
let kscreenHeightRatio:CGFloat = kSCREEN_HEIGHT / 667;

func kiPhone4() ->Bool {
    return UIScreen.main.bounds.size.height == 480.0
}

func kiPhone5() ->Bool {
    return UIScreen.main.bounds.size.height == 568.0
}

func kiPhone6() ->Bool {
    return UIScreen.main.bounds.size.height == 667.0
}

func kiPhone6plus() ->Bool {
    return UIScreen.main.bounds.size.height == 736.0
}

func kiPhonex() ->Bool {
    return UIScreen.main.bounds.size.height == 812.0
}

func kSafebottomMargin() ->CGFloat {
    if kiPhonex()==true{
        return 30.0
    }
    return 0.0
}

func kCOLORNOW(a:CGFloat,b:CGFloat,c:CGFloat)->UIColor{
    return UIColor(red: a/255.0, green: b/255.0, blue: c/255.0, alpha: 1)}

// View的right、left、bottom、top、width、height
func kXYViewR(view:UIView) ->CGFloat {
    return (CGFloat(view.frame.origin.x + view.frame.size.width))
}
func kXYYViewL(view:UIView)->CGFloat{
    return (CGFloat)(view.frame.origin.x)
}
func kXYViewBottom(view:UIView)->CGFloat{
    return (CGFloat)(view.frame.origin.y + view.frame.size.height)
}
func kXYViewTop(view:UIView)->CGFloat{
    return (CGFloat)(view.frame.origin.y)
}
func kXYViewWidth(view:UIView)->CGFloat{
    return (CGFloat)(view.frame.size.width)
}
func kXYViewHeight(view:UIView)->CGFloat{
    return (CGFloat)(view.frame.size.height)
}

//读取本地图片
func kLOADIMAGE(imageName __imgName__:String,PicType:String) -> UIImage {
    return UIImage.init(contentsOfFile: Bundle.main.path(forResource: __imgName__, ofType: PicType)!)!
}

func kFONTN(size __SIZE__:CGFloat) ->UIFont {
    return UIFont.systemFont(ofSize: __SIZE__)
    //UIFont.init(name: "Heiti SC", size: __SIZE__)!
}


func kFONTNB(size __SIZE__:CGFloat) ->UIFont {
    return UIFont.boldSystemFont(ofSize: __SIZE__)
}

func kDLog<T>(_ message: T, file : String = #file, methodName: String = #function, lineNumber : Int = #line) {
    
    #if DEBUG
        ///带后缀 .swift
        // let fileName = (file as NSString).lastPathComponent
        
        ///去掉 .swift
        let filePath = file as NSString
        let filePath_copy = filePath.lastPathComponent as NSString
        let fileName = filePath_copy.deletingPathExtension
        print("\n\(fileName) : \(methodName)__ \(lineNumber) __:\n\(message)")
        
    #endif
}



