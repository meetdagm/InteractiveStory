//
//  ViewController.swift
//  InteractiveStory
//
//  Created by Dagmawi Nadew-Assefa on 5/5/18.
//  Copyright © 2018 Sason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let customMainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func loadView() {
        
        self.view = customMainView
    }

}

