//
//  SecondScreen.swift
//  test
//
//  Created by dev on 16/1/2020.
//  Copyright © 2020 dev. All rights reserved.
//

import UIKit
import WebKit
import TealiumSwift

class SecondScreen: UIViewController {
    let mydata = ["page_name": "second_page"]
    @IBOutlet weak var WebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        TealiumHelper.trackView(title: "second_page", data: mydata)
        let url = URL(string:"https://aa-playground.glitch.me/webView")
        let request = URLRequest(url: url!)
        WebView.load(request)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToHome(_ sender: Any) {
        performSegue(withIdentifier: "MainScreen", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
