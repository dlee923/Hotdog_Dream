//
//  Emitter.swift
//  Hotdog Dream
//
//  Created by Daniel Lee on 7/1/18.
//  Copyright © 2018 DLEE. All rights reserved.
//

import UIKit

class Emitter: CAEmitterLayer {
    
    static func generateEmitter(image: UIImage) -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        emitter.emitterShape = kCAEmitterLayerLine
        let emitterCells = generateEmitterCells(image: image)
        emitter.emitterCells = emitterCells
        return emitter
    }
    
    static func generateEmitterCells(image: UIImage) -> [CAEmitterCell] {
        var emitterCells = [CAEmitterCell]()
        let cell = CAEmitterCell()
        cell.contents = image.cgImage
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
        
        return emitterCells
    }
}
