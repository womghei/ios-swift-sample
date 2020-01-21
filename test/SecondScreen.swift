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
    let mydata = [
    //"aam_uuid" : "test aam_uuid",
    //"adobemcvid" : "test adobemcvid",
    //"app_id" : "test app_id",
    //"app_name" : "test app_name",
    //"app_version" : "test app_version",
    "application_id" : "test application_id",
    "cid" : "test cid",
    "customer_id" : "test customer_id",
    //"device" : "test device",
    //"device_orientation" : "test device_orientation",
    //"device_os_version" : "test device_os_version",
    //"device_resolution" : "test device_resolution",
    "error_code" : "test error_code",
    "error_type" : "test error_type",
    //"event_action" : "test event_action",
    //"event_category" : "test event_category",
    //"event_content" : "test event_content",
    "funnel_name" : "test funnel_name",
    "funnel_step" : "test funnel_step",
    "funnel_step_name" : "test funnel_step_name",
    "page_category" : "test page_category",
    "page_language" : "test page_language",
    "page_name" : "test page_name",
    "page_subcategory" : "test page_subcategory",
    "page_url" : "/test_second_page",
    "product_category" : "test product_category",
    "product_id" : "test product_id",
    "product_name" : "test product_name",
    "product_quantity" : "test product_quantity",
    "product_sku" : "test product_sku",
    "product_subcategory" : "test product_subcategory",
    "product_unit_price" : "test product_unit_price",
    "promotion_action" : "test promotion_action",
    "promotion_category" : "test promotion_category",
    "promotion_content" : "test promotion_content",
    "promotion_event" : "test promotion_event",
    //"push_notifications" : "test push_notifications",
    "registration_event" : "test",
    "visitor_id" : "test"]
    
    let mydata2 = [
    //"aam_uuid" : "test aam_uuid",
    //"adobemcvid" : "test adobemcvid",
    //"app_id" : "test app_id",
    //"app_name" : "test app_name",
    //"app_version" : "test app_version",
    "application_id" : "test application_id",
    "cid" : "test cid",
    "customer_id" : "test customer_id",
    //"device" : "test device",
    //"device_orientation" : "test device_orientation",
    //"device_os_version" : "test device_os_version",
    //"device_resolution" : "test device_resolution",
    //"error_code" : "test error_code",
    //"error_type" : "test error_type",
    "event_action" : "click",
    "event_category" : "navigation",
    "event_content" : "back to screen 1",
    //"funnel_name" : "test funnel_name",
    //"funnel_step" : "test funnel_step",
    //"funnel_step_name" : "test funnel_step_name",
    //"page_category" : "test page_category",
    //"page_language" : "test page_language",
    "page_name" : "test second_page",
    //"page_subcategory" : "test page_subcategory",
    "page_url" : "/test_second_page",
    "product_category" : "test product_category",
    "product_id" : "test product_id",
    "product_name" : "test product_name",
    "product_quantity" : "test product_quantity",
    "product_sku" : "test product_sku",
    "product_subcategory" : "test product_subcategory",
    "product_unit_price" : "test product_unit_price",
    "promotion_action" : "test promotion_action",
    "promotion_category" : "test promotion_category",
    "promotion_content" : "test promotion_content",
    "promotion_event" : "test promotion_event",
    "push_notifications" : "test push_notifications",
    "registration_event" : "test",
    "visitor_id" : "test"]
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
        TealiumHelper.trackEvent(title: "fake_click", data: mydata2)
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
