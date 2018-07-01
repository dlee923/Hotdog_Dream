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
        
        let emitter = CAEmitterLayer()
        emitter.emitterShape = kCAEmitterLayerLine
        
        var emitterCells = [CAEmitterCell]()
        let cell = CAEmitterCell()
        cell.contents = #imageLiteral(resourceName: "hotdog_tiny").cgImage
        cell.scale = 0.15
        cell.scaleRange = 0.1
        cell.emissionLongitude = CGFloat.pi
        cell.emissionRange = CGFloat.pi * 0.15
        cell.birthRate = 2
        cell.lifetime = 20
        cell.velocity = 0
        cell.yAcceleration = 25
        cell.spin = 1
        emitterCells.append(cell)
        
        emitter.emitterCells = emitterCells
        emitter.emitterPosition = CGPoint(x: self.view.frame.width / 2, y: -20)
        emitter.emitterSize = CGSize(width: self.view.frame.width, height: 5)
        
        self.view.layer.addSublayer(emitter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

