//
//  ViewController.swift
//  WebRequest
//
//  Created by Dulio Denis on 11/10/15.
//  Copyright © 2015 Dulio Denis. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    
    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a WKWebView and add it to the container
        webView = WKWebView()
        container.addSubview(webView)
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        // Size the webView accordingly
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        // Load a request to it
        loadRequest("https://developer.apple.com/swift/blog/")
    }
    
    
    // MARK: Utility Method
    
    func loadRequest(urlString: String) {
        let url = NSURL(string: urlString)!
        let request = NSURLRequest(URL: url)
        
        webView.loadRequest(request)
    }
    
    
    // MARK: Action Methods
    
    @IBAction func loadSwift(sender: AnyObject) {
        loadRequest("https://developer.apple.com/swift/blog/")
    }
    
    
    @IBAction func loadJavaScript(sender: AnyObject) {
        loadRequest("http://javascriptplayground.com/")
    }
    
    
    @IBAction func loadPython(sender: AnyObject) {
        loadRequest("http://planetpython.org/")
    }
}
