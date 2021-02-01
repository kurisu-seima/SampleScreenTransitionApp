//
//  ModalSecondViewController.swift
//  ScreenTransitionForSegue
//
//  Created by くりすせいま on 2020/09/27.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

class ModalSecondViewController: UIViewController {
    
    //値を受け取る変数を宣言
    var numString = ""
    
    //ラベルのプロパティ宣言
    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        //ラベルに値をセット
        myLabel.text = numString
    }
}
