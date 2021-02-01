//
//  NavigationFirstViewController.swift
//  ScreenTransitionForSegue
//
//  Created by くりすせいま on 2020/09/27.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

class NavigationFirstViewController: UIViewController {
    
    @IBOutlet weak var yourTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //セグエを実行する前の処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //セグエの識別子の確認
        if segue.identifier == "toNext" {
            
            //遷移先NavigationSecondViewControllerの取得
            let nextView = segue.destination as! NavigationSecondViewController
            
            //値の設定
            nextView.sumString = yourTextField.text!
        }
    }
    //Exitで遷移先から戻るコード
    @IBAction func back(segue: UIStoryboardSegue) {
    }
}
