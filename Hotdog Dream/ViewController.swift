//
//  ViewController.swift
//  Hotdog Dream
//
//  Created by Daniel Lee on 7/1/18.
//  Copyright © 2018 DLEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = .yellow
        
        let emitter = Emitter.generateEmitter(image: #imageLiteral(resourceName: "hotdog_tiny"))
        
        emitter.emitterPosition = CGPoint(x: self.view.frame.width / 2, y: -20)
        emitter.emitterSize = CGSize(width: self.view.frame.width, height: 5)
        
        self.view.layer.addSublayer(emitter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
