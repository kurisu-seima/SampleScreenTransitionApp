//
//  NavigationFirstViewController.swift
//  ScreenTransition
//
//  Created by くりすせいま on 2020/09/27.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

class NavigationFirstViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //タイトルをセット
        self.navigationItem.title = "最初の画面"
    }

    @IBAction func nextButton(_ sender: Any) {

        //遷移先のナビゲーションコントローラーのインスタンスを作成
        let navigationController = storyboard?.instantiateViewController(withIdentifier: "Second") as! NavigationSecondViewController
    
        //値を設定する
        navigationController.numString = myTextField.text!

        //画面を遷移できるように設定する
        self.navigationController?.pushViewController(navigationController, animated: true)
    }
}
