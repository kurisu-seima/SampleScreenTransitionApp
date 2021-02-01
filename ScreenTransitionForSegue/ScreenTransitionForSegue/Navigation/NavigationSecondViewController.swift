//
//  NavigationSecondViewController.swift
//  ScreenTransitionForSegue
//
//  Created by くりすせいま on 2020/09/27.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

class NavigationSecondViewController: UIViewController {
    
    //値を受け取る変数を宣言
    var sumString = ""

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //値の設定
        myLabel.text = sumString
    }
}
