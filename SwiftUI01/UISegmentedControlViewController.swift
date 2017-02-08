//
//  UISegmentedControlViewController.swift
//  SwiftUI01
//
//  Created by yons on 17/2/8.
//  Copyright © 2017年 liutao. All rights reserved.
//

import UIKit

class UISegmentedControlViewController: UIViewController {

    var segmentControl:UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

       self.view.backgroundColor = UIColor.white
       self.title = "UISegmentedControl"
        var appsArray:[String] = ["悠唐科技","有糖","小糖"]
        appsArray.insert("成都", at: 0)
        segmentControl = UISegmentedControl(items: appsArray)
        segmentControl.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        self.view.addSubview(segmentControl)
        
        // 常用的属性和方法
        // 默认选择下标
        segmentControl.selectedSegmentIndex = 0
        // 在第三个位置插入一个分段标题
        segmentControl.setTitle("lt", forSegmentAt: 3)
        // 在2的位置设置一个图片。图片和标题不能共存，设置图片后标题就不显示了
        segmentControl.setImage(UIImage(named: "ic_final"), forSegmentAt: 2)
        //在坐标为2的位置，插入一个分段标题
        segmentControl.insertSegment(withTitle: "ou", at: 2, animated: true)
        //在坐标为3的位置，插入一个分段图片
        segmentControl.insertSegment(with: UIImage(named: "ic_final"), at: 3, animated: true)
        let count = segmentControl.numberOfSegments
        print(count)
        
        // 获取某个下标的标题或者图片
        let title1 = segmentControl.titleForSegment(at: 1)
//        let image = segmentControl.imageForSegment(at: 2)
        print(title1!)
        // 不是长期选中的状态，只是有点击的效果的状态
        segmentControl.isMomentary = true
        // 设置某一分段是否可用
        segmentControl.setEnabled(false, forSegmentAt: 1)
        // 设置内容偏移
        segmentControl.setContentOffset(CGSize(width: 10.0, height: 10.0), forSegmentAt: 2)
        //是否根据segment的内容改变segment的宽度
        segmentControl.apportionsSegmentWidthsByContent = true
        segmentControl.addTarget(self, action: #selector(segmentChange), for: UIControlEvents.valueChanged)
    }

    
    func segmentChange(sender:AnyObject?) -> Void {
        let segment:UISegmentedControl = sender as! UISegmentedControl
               switch segment.selectedSegmentIndex {
           
                   case 0 :
                            print("000 ")
                    case 1 :
                            print("11111 ")
                     case 2 :
                           print("2222 ")
                     default:
                            print("default ")
                     }
    }

}
