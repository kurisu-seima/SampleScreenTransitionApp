//
//  ModalFirstViewController.swift
//  ScreenTransition
//
//  Created by くりすせいま on 2020/09/27.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

class ModalFirstViewController: UIViewController {

    //テキストフィールドのプロパティ宣言
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func nextButton(_ sender: UIButton) {
        
        //移動先のビューコントローラのインスタンスを作成
        let nextView = storyboard?.instantiateViewController(withIdentifier: "nextPage") as! ModalSecondViewController
                
        //値の設定
        nextView.sum = myTextField.text!
        
        //画面を遷移できるように設定する
        self.present(nextView, animated: true, completion: nil)
    }
}
