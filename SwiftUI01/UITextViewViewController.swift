//
//  UITextViewViewController.swift
//  SwiftUI01
//
//  Created by yons on 17/2/8.
//  Copyright © 2017年 liutao. All rights reserved.
//

import UIKit

class UITextViewViewController: UIViewController {

    var textView:UITextView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "textView"
        self.view.backgroundColor = UIColor.white
        textView = UITextView(frame: self.view.bounds)
        textView!.backgroundColor = UIColor.gray
        self.view.addSubview(textView!)
        // MARK :常用的属性
        
        //设置字体的颜色
        textView!.textColor = UIColor.green
        //设置字号 字体
        textView!.font = UIFont.systemFont(ofSize: 18)
        textView!.font = UIFont(name: "Helvetica", size: 18)
        
        //设置显示的内容
        textView!.text = "经常听到：\n 被中介骗了，押金不退，晚一天交房租，被讹了。\n\n租房普遍现象：\n网上报价不真实？经常被忽悠！（看房时报价都比网上高！）\n证件不齐全，被骗过!（其实根本不是房东啦!）\n看房前态度都很热情！\n签约之后态度骤变!\n入住后家电维修只能靠自己！\n房屋到期，押金各种被勒索！\n\n现在开始，你来改变这一切！\n《租房点评》为你而备，租房无忧！\n\n再也不用担心被欺骗，想要知道给你介绍房子的人好不好，《租房点评》告诉你！经常听到：\n 被中介骗了，押金不退，晚一天交房租，被讹了。\n\n租房普遍现象：\n网上报价不真实？经常被忽悠！（看房时报价都比网上高！）\n证件不齐全，被骗过!（其实根本不是房东啦!）\n看房前态度都很热情！\n签约之后态度骤变!\n入住后家电维修只能靠自己！\n房屋到期，押金各种被勒索！\n\n现在开始，你来改变这一切！\n《租房点评》为你而备，租房无忧！\n\n再也不用担心被欺骗，想要知道给你介绍房子的人好不好，《租房点评》告诉你！经常听到：\n 被中介骗了，押金不退，晚一天交房租，被讹了。\n\n租房普遍现象：\n网上报价不真实？经常被忽悠！（看房时报价都比网上高！）\n证件不齐全，被骗过!（其实根本不是房东啦!）\n看房前态度都很热情！\n签约之后态度骤变!\n入住后家电维修只能靠自己！\n房屋到期，押金各种被勒索！\n\n现在开始，你来改变这一切！\n《租房点评》为你而备，租房无忧！\n\n再也不用担心被欺骗，想要知道给你介绍房子的人好不好，《租房点评》告诉你！经常听到：\n 被中介骗了，押金不退，晚一天交房租，被讹了。\n\n租房普遍现象：\n网上报价不真实？经常被忽悠！（看房时报价都比网上高！）\n证件不齐全，被骗过!（其实根本不是房东啦!）\n看房前态度都很热情！\n签约之后态度骤变!\n入住后家电维修只能靠自己！\n房屋到期，押金各种被勒索！\n\n现在开始，你来改变这一切！\n《租房点评》为你而备，租房无忧！\n\n再也不用担心被欺骗，想要知道给你介绍房子的人好不好，《租房点评》告诉你！"
        // 文本的对齐方式
        textView!.textAlignment = .right
        // 文本视图设置圆角
        textView!.layer.cornerRadius = 20
        // 是否允许点击链接和附件
        textView!.isSelectable = true
        // 返回键的类型
        textView!.returnKeyType = .done
        // 键盘类型
        textView!.keyboardType = .default
        // 是否可以滚动
        textView!.isScrollEnabled = true
        // 自适应高度
        textView!.autoresizingMask = .flexibleHeight
        // 设置富文本
        var attributeString:NSMutableAttributedString = NSMutableAttributedString(string: "屋到期，押金各种被勒索！\n\n现在开始，你来改变这一切！\n《租房点评》为你而备，租房无忧！\n\n再也不用担心被欺骗，想要知道给你介绍房子的人好不好，《租房点评》告诉你！经常听到：\n 被中介骗了，押金不退，晚一天交房租，被讹了。\n\n租房普遍现象：\n网上报价不真实？经常被忽悠！（看房时报价都比网上高！）\n证件不齐全，被骗过!（其实根本不是房东啦!）\n看房前态度都很热情！\n签约之后态度骤变!\n入住后家电维修只能靠自己！\n房屋到期，押金各种被勒索！\n\n现在开始，你来改变这一切！\n《租房点评》为你而备，租房无忧！\n\n再也不用担心被欺骗，想要知道给你介绍房子的人好不好，《租房点评》告诉你！经常听到：\n 被中介骗了，押金不退，晚一天交房租，被讹了。\n\n租房普遍现象：\n网上报价不真实？经常被忽悠！（看房时报价都比网上高！）\n证件不齐全，被骗过!（其实根本不是房东啦!）\n看房前态度都很热情！\n签约之后态度骤变!\n入住后家电维修只能靠自己！\n房屋到期，押金各种被勒索！\n\n现在开始，你来改变这一切！\n《租房点评》为你而备，租房无忧！\n\n再也不用担心被欺骗，想要知道给你介绍房子的人好不好，《租房点评》告诉你！")
        
        

    }
   
}
