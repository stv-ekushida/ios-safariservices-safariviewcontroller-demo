# SafariViewController

## 概要
アプリ内で外部ブラウザを開きたいときに利用します。

## 関連クラス
UIViewViewController

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
