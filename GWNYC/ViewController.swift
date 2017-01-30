//
//  ViewController.swift
//  GWNYC
//
//  Created by Ticia Chance on 1/24/17.
//  Copyright © 2017 Ticia Chance. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let testingGarden = GardenData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testingGarden.getGardenData { (response) in
            //
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

