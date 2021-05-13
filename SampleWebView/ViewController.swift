//
//  ViewController.swift
//  SampleWebView
//
//  Created by 김광희 on 2021/05/10.
//

import UIKit
import WebKit

class ViewController: UIViewController{
    @IBOutlet weak var WebViewMain: WKWebView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1. URL 주소
        // 2. URL -> Request 로 변환
        // 3. Request 를 WebView 에 load
        
        let urlString = "https://www.google.com"
        if let url = URL(string: urlString) { // unwrapping 과정 = optional binding
            let urlReq = URLRequest(url: url)
            WebViewMain.load(urlReq)
        }
        
        var abc = "1"
        var abc1: String? = nil  // ? 가 붙으면 optional 값 = 값이 있을 수도 or 없을 수도
        // 상수는 값이 변하지 않으므로 unwrap 과정이 불필요, 변수의 경우 값이 변할 수 있으므로 unwrap 이 필요
        // Swift 자체에서 unwrap 후 사용하도록 유도함 (Swift 는 null 값에 안전한 언어)
        
        let aaa = abc1!  // ! 를 붙이면 강제로 unwrapping, 이경우 변수 abc1 의 값이 nil 이므로 에러가 발생
        
        if let unwrap = abc1 {
            unwrap  // unwrap 된 값
        }
        
        
        
    }


}

