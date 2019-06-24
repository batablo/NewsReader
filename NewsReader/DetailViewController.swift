//
//  DetailViewController.swift
//  NewsReader
//
//  Created by 小畑啓彰 on 2019/05/24.
//  Copyright © 2019 Hiroaki Obata. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var link:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: self.link) {
            let request = URLRequest(url: url)
            self.webView.load(request)
        }
    }
}
