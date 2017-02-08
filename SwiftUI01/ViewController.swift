//
//  ViewController.swift
//  SwiftUI01
//
//  Created by yons on 17/1/19.
//  Copyright © 2017年 liutao. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

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
        
        self.title = "常用UI"
        // lable
        self.view!.backgroundColor = UIColor.white
        lable1 = UILabel(frame: CGRect(x: 0, y: 64, width: 100, height: 100))
        lable1.backgroundColor = UIColor.yellow
        lable1.textAlignment = NSTextAlignment.left
        lable1.text = "你好lable"
        self.view.addSubview(lable1)
        
        // button
        button = UIButton(frame: CGRect(x: 100, y: 64, width: 100, height: 100))
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
        slider = UISlider(frame: CGRect(x: button.frame.maxX, y: 64, width: 100, height: 100))
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
        datePicker = UIDatePicker(frame: CGRect(x: searchBar.frame.maxX, y: searchBar.frame.minY, width: 150, height: 100))
        self.view.addSubview(datePicker)
        
        // UIPickerView
        pickerView = UIPickerView(frame: CGRect(x: scrollview.frame.minX, y: scrollview.frame.maxY, width: 100, height: 100))
        pickerView.delegate = self
        pickerView.dataSource = self
        self.view.addSubview(pickerView)
        
        // UIProgressView
        proGressView = UIProgressView(frame: CGRect(x: pickerView.frame.maxX, y: pickerView.frame.minY, width: 100, height: 100))
        proGressView.setProgress(0.8, animated: true)
        proGressView.trackTintColor = UIColor.red
        proGressView.tintColor = UIColor.brown
        self.view.addSubview(proGressView)
        
        //UITextView
        textView = UITextView(frame: CGRect(x: proGressView.frame.maxX, y: proGressView.frame.minY, width: 100, height: 100))
        textView.backgroundColor = UIColor.blue
        textView.isEditable = false
        textView.font = UIFont.systemFont(ofSize: 20)
        textView.text = "this is a textview"
        self.view.addSubview(textView)
        
        //UIToolBar
        toolBar = UIToolbar(frame: CGRect(x: pickerView.frame.minX, y: pickerView.frame.maxY, width: 100, height: 100))
        let flexiblespace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let barbtnItemA = UIBarButtonItem(title: "A", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        let barbtnItemB = UIBarButtonItem(title: "B", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        let barbtnItemC = UIBarButtonItem(title: "C", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        toolBar.items = [flexiblespace,barbtnItemA,barbtnItemB,barbtnItemC]
        self.view.addSubview(toolBar)
        
        // UIActivityIndicatorView
        activityIndicatorView = UIActivityIndicatorView(frame: CGRect(x: toolBar.frame.maxX, y: toolBar.frame.minY, width: 100, height: 100))
        activityIndicatorView.activityIndicatorViewStyle = .gray
        activityIndicatorView.startAnimating()
        self.view.addSubview(activityIndicatorView)
        
        
    }

  
    
    func mybutton(button:UIButton) -> Void {
        print("我是button的点击事件响应")
        self.navigationController!.pushViewController(UITextViewViewController(), animated: true)
        
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
    
    //MARK : 必须实现协议的required 方法 否则会报错
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 20
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "你好"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}

