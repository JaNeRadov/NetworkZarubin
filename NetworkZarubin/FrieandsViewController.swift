//
//  FrieandsViewController.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 11.07.2022.
//

import UIKit
import WebKit

class FrieandsViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet weak var webView: WKWebView!{
        didSet {
            webView.navigationDelegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getFrieand()
       
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse:
                 WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        guard let url = navigationResponse.response.url, url.path == "/blank.html",
              let fragment = url.fragment else {
            decisionHandler(.allow)
            return
        }
        
        let params = fragment
            .components(separatedBy: "&")
            .map { $0.components(separatedBy: "=")}
            .reduce([String: String]()) { result, param in
                var dict = result
                let key = param[0]
                let value = param[1]
                dict[key] = value
                return dict
            }
        if let name = params["nickname"] {
            Friends.instance.name = name
            print(name)
        }
        decisionHandler(.cancel)
}}
