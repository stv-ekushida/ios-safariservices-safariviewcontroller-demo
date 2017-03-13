//
//  ViewController.swift
//  ios-safari-service-safariviewcontroller-demo
//
//  Created by Kushida　Eiji on 2017/03/13.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:-Actions
    @IBAction func didTapShowView(_ sender: UIButton) {
        
        let vc = SFSafariViewController(url: URL(string:"https://www.amazon.com/")!)
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
    }
}

//MARK:-SFSafariViewControllerDelegate
extension ViewController: SFSafariViewControllerDelegate {
    
    /// Done押下時のイベント
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /// 初期表示画面の読み込み完了イベント
    func safariViewController(_ controller: SFSafariViewController,
                              didCompleteInitialLoad didLoadSuccessfully: Bool) {
        print(#function)
    }
}

