//
//  ModalFirstViewController.swift
//  ScreenTransitionForSegue
//
//  Created by くりすせいま on 2020/09/27.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

class ModalFirstViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //セグエが実行される前の処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        //どのセグエを上書きするのか
        if segue.identifier == "toSecond" {
            
            //遷移先のビューコントローラの取得
            let nextView = segue.destination as! ModalSecondViewController
            
            //値の設定
            nextView.numString = myTextField.text!
        }
    }
    //Exitで遷移先から戻るコード
    @IBAction func back(segue: UIStoryboardSegue) {
    }
}
