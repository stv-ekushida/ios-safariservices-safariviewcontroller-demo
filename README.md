# SafariViewController

## 概要
アプリ内で外部ブラウザを開きたいときに利用します。

## 関連クラス
UIViewController

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|init(url URL: URL, entersReaderIfAvailable: Bool) | リードモードを指定して初期化する |  let vc = SafariViewController(url, entersReaderIfAvailable: true) |

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|delegate | delegateを設定する。<br>SFSafariViewControllerDelegateを利用するため |  vc.delegate = self |

## SFSafariViewControllerDelegateのメソッド
|メソッド名|説明|必須|
|---|---|---|
|safariViewControllerDidFinish | Done押下時の呼ばれる | - |
|didCompleteInitialLoad | 初期表示画面の読み込み完了時に呼ばれる | - |
|activityItemsForURL | アクションボタンをタップされた際に呼び出される | - |

## サンプル

```swift:ViewController.swift
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
```

## フレームワーク
SafariServices.framework

## サポートOSバージョン
iOS9.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.2〜 |

## 参考
https://developer.apple.com/reference/safariservices/sfsafariviewcontroller
