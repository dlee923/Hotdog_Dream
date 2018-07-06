//
//  TestController.swift
//  Hotdog Dream
//
//  Created by Daniel Lee on 7/5/18.
//  Copyright © 2018 DLEE. All rights reserved.
//

import UIKit

class TestController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .purple
        
        var kevin: person?
        weak var career: job?
        
        kevin = person()
        career = job()
        
        kevin?.job = career
        career?.person = kevin
        
        kevin = nil
        career = nil
        
    }
    
}

class person {
    var job: job?
    
    init() {
        print("adding person")
    }
    
    deinit {
        print("removing person")
    }
}

class job {
    var person: person?
    
    init() {
        print("adding job")
    }
    
    deinit {
        print("removing job")
    }
}
