//
//  ViewController.swift
//  iOSUIInCode
//
//  Created by Bhuman Soni on 17/4/20.
//  Copyright © 2020 Bhuman Soni. All rights reserved.
//

    import UIKit
    import WebKit

    class ViewController: UIViewController, WKUIDelegate  {

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            
            let myWebView:WKWebView = WKWebView(frame: CGRect(x:0, y:0, width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height))
            myWebView.uiDelegate = self
            self.view.addSubview(myWebView)
            
            
            //1. Load web site into my web view
            let myURL = URL(string: "https://infranodus.com/kb/google_210819T0442?background=default&most_influential=bc&maxnodes=150&labelsize=fixed&edgestype=line&drawedges=true&drawnodes=true&defaultlabelsize=14&dynamic=accumulate&cutgraph=1&selected=highlight&hide_always=1")
            let myURLRequest:URLRequest = URLRequest(url: myURL!)
            myWebView.load(myURLRequest)

        }
    
    }

