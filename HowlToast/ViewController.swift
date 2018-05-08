//
//  ViewController.swift
//  HowlToast
//
//  Created by 유명식 on 2018. 5. 8..
//  Copyright © 2018년 유명식. All rights reserved.
//

import UIKit
import Toast_Swift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.makeToast("토스트 메세지 입니다.")
        
        
        // toast presented with multiple options and with a completion closure
        self.view.makeToast("This is a piece of toast", duration: 2.0, position: .bottom, title: "Toast Title", image: #imageLiteral(resourceName: "flowers")) { didTap in
            if didTap {
                print("completion from tap")
            } else {
                print("completion without tap")
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

