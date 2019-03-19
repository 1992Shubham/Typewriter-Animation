//
//  ViewController.swift
//  Type Animation
//
//  Created by SHUBHAM AGARWAL on 17/03/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    
    var str = "Let Create An App"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(gesture)
    }
    
    
    
    @objc
    func onClickView() {
        textLbl.text = ""
        for i in str {
            AudioServicesPlaySystemSound(1306)
            textLbl.text! += "\(i)"
            RunLoop.current.run(until: Date()+0.12)
        }
        
    }
}

