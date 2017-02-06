//
//  ViewController.swift
//  SwiftUI01
//
//  Created by yons on 17/1/19.
//  Copyright © 2017年 liutao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lable1:UILabel!
    var button: UIButton!
    var imageView:UIImageView!
    var slider:UISlider!
    var webView:UIWebView!
    var segmentControl:UISegmentedControl!
    var switchControl:UISwitch!
    var textField:UITextField!
    var scrollview:UIScrollView!
    var searchBar:UISearchBar!
    var pageControl:UIPageControl!
    var datePicker:UIDatePicker!
    var pickerView:UIPickerView!
    var proGressView:UIProgressView!
    var textView:UITextView!
    var toolBar:UIToolbar!
    var activityIndicatorView:UIActivityIndicatorView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // lable
        self.view!.backgroundColor = UIColor.white
        lable1 = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        lable1.backgroundColor = UIColor.yellow
        lable1.textAlignment = NSTextAlignment.left
        lable1.text = "你好lable"
        self.view.addSubview(lable1)
        
        // button
        button = UIButton(frame: CGRect(x: 100, y: 0, width: 100, height: 100))
        button.backgroundColor = UIColor.red
        button.setTitle("按钮1", for: UIControlState.normal)
        button.addTarget(self, action: #selector(mybutton(button:)), for:.touchUpInside)
        self.view.addSubview(button)
        
        let btn = UIButton(type: UIButtonType.system)
        btn.frame = CGRect(x: lable1.frame.minX, y: lable1.frame.maxY, width: 100, height: 100)
        btn.backgroundColor = UIColor.purple
        btn.setTitle("按钮2", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(mybtn(button:)), for:.touchUpInside)
        self.view.addSubview(btn)
        
        // UIimageView
        let image = UIImage(named: "DingTalk20170118104010")
        imageView = UIImageView(image: image)
        imageView.frame = CGRect(x: button.frame.minX, y: button.frame.maxY, width: 100, height: 100)
        self.view.addSubview(imageView)
        
        // UISlider
        slider = UISlider(frame: CGRect(x: button.frame.maxX, y: 0, width: 100, height: 100))
        slider.backgroundColor = UIColor(white: 0.8, alpha: 1)
        self.view.addSubview(slider)
        
        // UIWebView
        webView = UIWebView(frame: CGRect(x:btn.frame.minX, y: btn.frame.maxY, width: 100, height: 100))
        let url = NSURL(string: "http://caipiao.m.taobao.com")
        let request = NSURLRequest(url: url as! URL)
        webView.loadRequest(request as URLRequest)
        self.view.addSubview(webView)
        
          // UISegmentedControl
        segmentControl = UISegmentedControl(items: ["a","b","c","d"])
        segmentControl.frame = CGRect(x: imageView.frame.maxX, y: imageView.frame.minY, width: 100, height: 100)
        segmentControl.backgroundColor = UIColor(red: 240/255.0, green: 235/255.0, blue: 123/255.0, alpha: 1)
        self.view.addSubview(segmentControl)
        
        // UItextField
        
        textField = UITextField(frame: CGRect(x: webView.frame.maxX, y: webView.frame.minY, width: 100, height: 100))
        textField.backgroundColor = UIColor.lightGray
        textField.textAlignment = NSTextAlignment.center
        textField.placeholder = "Input text"
        self.view.addSubview(textField)
        
        // UISwitch
        switchControl = UISwitch(frame: CGRect(x: textField.frame.maxX, y: textField.frame.minY, width: 100, height: 100))
        switchControl.setOn(true, animated: true)
        self.view.addSubview(switchControl)
        
        // UIScrollView
        scrollview = UIScrollView(frame: CGRect(x: webView.frame.minX, y: webView.frame.maxY, width: 100, height: 100))
        scrollview.isPagingEnabled = true
        scrollview.showsVerticalScrollIndicator = true
     
        var fx:CGFloat = 0.0
        for _ in 0...3{
        
         let view = UIView(frame: CGRect(x: fx, y: 0.0, width: 100.0, height: 100.0))
            fx += 100.0
            view.backgroundColor = UIColor(red: fx * 0.5/255.0, green: 1.0, blue: fx * 0.5 / 255.0, alpha: 1)
            scrollview.addSubview(view)
            
        }
        scrollview.contentSize = CGSize(width: 3 * 100.0, height: 100)
           self.view.addSubview(scrollview)
        
        // UISearchBar
        searchBar = UISearchBar(frame: CGRect(x: scrollview.frame.maxX, y: scrollview.frame.minY, width: 100, height: 100))
        searchBar.showsCancelButton = false
        searchBar.searchBarStyle = UISearchBarStyle.minimal
        searchBar.placeholder = "input text"
        self.view.addSubview(searchBar)
        
        // UIDatePicker
        datePicker = UIDatePicker(frame: CGRect(x: searchBar.frame.maxX, y: searchBar.frame.minY, width: 100, height: 100))
        self.view.addSubview(datePicker)
        //  读取日期
        
    }

  
    
    func mybutton(button:UIButton) -> Void {
        print("我是button的点击事件响应")
    }
    
    func mybtn(button:UIButton) -> Void {
        print("点击得了另外一个")
    }

    // 开始请求
    func loadurl(url:String,web:UIWebView) {
        let aurl = NSURL(string:("http://" + url))
        let request = NSURLRequest(url: aurl as! URL)
        web.loadRequest(request as URLRequest)
        
    }
    // 网页开始载入
    func webViewDidStartLoad(webview:UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
    }
    // 网页载入结束
    func webdidFinishLoad(webview:UIWebView){
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
}

