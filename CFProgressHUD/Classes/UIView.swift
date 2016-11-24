//
//  UIView.swift
//  CFProgressHUD
//
//  Created by chengfei.heng on 11/23/2016.
//  Copyright (c) 2016 chengfei.heng. All rights reserved.
//

import UIKit
import MBProgressHUD
import JGProgressHUD

public extension UIView {

    /**
     显示MBProgressHUD的提示信息
     */
    public func showHUDMsg(msg:String,offsetY:CGFloat = 0){
        MBProgressHUD.hide(for: self, animated: true)
        
        let hud = MBProgressHUD.showAdded(to: self, animated: true)
        hud.mode = MBProgressHUDMode.text;
        hud.margin = 10
        hud.removeFromSuperViewOnHide = true
        hud.label.text = msg;
        hud.contentColor = UIColor.white
        hud.bezelView.backgroundColor = UIColor.black
        hud.bezelView.style = .blur
        hud.hide(animated: true, afterDelay: 2)
    }
    /**
     显示MBProgressHUD的提示信息
     */
    public func showHUDMsg(){
        let hud = MBProgressHUD.showAdded(to: self, animated: true)
        hud.show(animated: true)
    }
    
    /**
     隐藏MBProgressHUD的提示信息
     */
    public func hideHUDMsg(){
        MBProgressHUD.hide(for: self, animated: true)
    }
    
    /**
     默认底部显示弹出消息JGProgressHUD
     */
    //    @available(*, deprecated, message="请使用showHUDMsg方法.")
    public func showMessage(msg:String,position:JGProgressHUDPosition = .bottomCenter){
        let hud = JGProgressHUD(style: JGProgressHUDStyle.dark)
        hud?.indicatorView = nil
        hud?.position = position
        hud?.textLabel.text = msg
        //      hud.backgroundColor = UIColor(netHex: 0x000000, alpha: 0.3) // 背景色
        hud?.interactionType = JGProgressHUDInteractionType.blockAllTouches //阻塞背后所有的触摸行为
        hud?.marginInsets = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0) //距底部距离
        hud?.show(in: self)
        hud?.dismiss(afterDelay: 1.0)
    }
    
    /**
     显示加载
     */
    public func showProgress(msg:String ,style:JGProgressHUDStyle){
        let hud = JGProgressHUD(style: style)
        hud?.textLabel.text = msg
        //        hud.backgroundColor = UIColor(netHex: 0x000000, alpha: 0.3) // 背景色
        hud?.interactionType = JGProgressHUDInteractionType.blockAllTouches //阻塞背后所有的触摸行为
        
        hud?.show(in: self, animated: true)
    }
    
    /**
     显示加载
     */
    public func showHUDProgress(){
        MBProgressHUD.showAdded(to: self, animated: true)
    }
    
    
    /**
     隐藏所有弹出消息
     */
    public func hiddenAllMessage(){
        for v in self.subviews {
            if v.isKind(of: JGProgressHUD.self) || v.isKind(of: MBProgressHUD.self) {
                v.removeFromSuperview()
            }
        }
    }
}
